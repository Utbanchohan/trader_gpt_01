import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

class SseService {
  final Dio _dio = Dio();
  final buffer = StringBuffer();
  List<String> followupList = [];
  bool streamEnd = false;
  var resUpdates;

  Stream<Map<String, dynamic>> connect(
    Map<String, dynamic> body,
    String token,
  ) async* {
    final url = "${BaseUrl.baseUrl}tgpt-python/api/user_ask_stream";

    final headers = {
      "accept": "text/event-stream",
      "authorization": "Bearer $token",
      "content-type": "application/json",
    };

    final response = await _dio.post<ResponseBody>(
      url,
      data: body,
      options: Options(headers: headers, responseType: ResponseType.stream),
    );
    String followUpText = '';
    String _jsonBuffer = "";
    List<String> chartText = [];
    await for (final chunk in response.data!.stream) {
      final decoded = utf8.decode(chunk);
      for (final line in const LineSplitter().convert(decoded)) {
        if (line.trim().isEmpty) continue;

        try {
          final json = jsonDecode(line);

          if (json is Map && json["chunk"] != null) {
            switch (json["type"]) {
              case "writer":
                buffer.write(json["chunk"]);
                yield {
                  "buffer": buffer.toString(),
                  "followUp": [],
                  "chart": chartText,
                  "updates": "",
                };
                break;

              case "followup":
                followUpText += json["chunk"];
                break;

              case "display":
                chartText.add(json["chunk"]);
                yield {
                  "buffer": '',
                  "followUp": [],
                  "chart": chartText,
                  "updates": "",
                };
                break;

              case "updates":
                resUpdates = json["chunk"];
                yield {
                  "buffer": '',
                  "followUp": [],
                  "chart": chartText,
                  "updates": json["chunk"],
                };
                break;

              default:
                // ignore unknown types
                break;
            }
          }
        } catch (e) {
          // 🚨 Instead of trying to decode again immediately,
          // accumulate partial line until it's valid JSON.
          debugPrint("⚠️ JSON not ready, buffering: $line");

          _jsonBuffer += line; // keep global/local buffer
          try {
            final json = jsonDecode(_jsonBuffer);
            _jsonBuffer = ""; // reset if parsed ok

            if (json is Map && json["chunk"] != null) {
              switch (json["type"]) {
                case "writer":
                  buffer.write(json["chunk"]);
                  yield {
                    "buffer": buffer.toString(),
                    "followUp": [],
                    "chart": chartText,
                    "updates": "",
                  };
                  break;

                case "followup":
                  followUpText += json["chunk"];
                  break;

                case "display":
                  chartText.add(json["chunk"]);
                  yield {
                    "buffer": '',
                    "followUp": [],
                    "chart": chartText,
                    "updates": "",
                  };
                  break;

                case "updates":
                  resUpdates = json["chunk"];
                  yield {
                    "buffer": '',
                    "followUp": [],
                    "chart": chartText,
                    "updates": json["chunk"],
                  };
                  break;
              }
            }
          } catch (_) {
            print("still incomplete, keep buffering");
          }

          // try {
          //   final json = jsonDecode(line);
          //   if (json is Map && json["chunk"] != null) {
          //     if (json['type'] == "writer") {
          //       buffer.write(json["chunk"]);
          //       yield {"buffer": buffer.toString(), "followUp": []};
          //     } else if (json['type'] == "followup") {
          //       followUpText += json["chunk"];
          //     } else if (json['type'] == "display") {
          //       print("Display chunk: ${json["chunk"]}");

          //       chartText.add(json["chunk"]);
          //       yield {"buffer": '', "followUp": [], "chart": chartText};
          //     }
          //   }
          // } catch (e) {
          //   log("Error parsing JSON: $e");
          //   try {
          //     final json = jsonDecode(line);
          //     if (json is Map && json["chunk"] != null) {
          //       if (json['type'] == "writer") {
          //         buffer.write(json["chunk"]);
          //         yield {"buffer": buffer.toString(), "followUp": []};
          //       } else if (json['type'] == "followup") {
          //         followUpText += json["chunk"];
          //       } else if (json['type'] == "display") {
          //         print("Display chunk: ${json["chunk"]}");

          //         chartText.add(json["chunk"]);
          //         yield {"buffer": '', "followUp": [], "chart": chartText};
          //       }
          //     }
          //   } catch (e) {}
          //   debugPrint("❌ JSON decode error: $e");
          // }
        }
      }
    }
    streamEnd = true;
    print(followUpText);
    if (followUpText.isNotEmpty) {
      dynamic decodedJsonfollow = jsonDecode(followUpText);
      List<dynamic> loist = decodedJsonfollow['followup_questions'];
      for (int i = 0; i < loist.length; i++) {
        followupList.add(loist[i]);
      }

      yield {
        "buffer": buffer.toString(),
        "followUp": followupList,
        "chart": chartText,
        "updates": resUpdates,
      };
    }
  }

  // void _onJSONData(
  //   dynamic jsonData,
  //   int messageIndex,
  //   List<Map<String, dynamic>> conversationData,
  //   void Function(String, dynamic) commit,
  //   void Function(String) appendFollowUp,
  //   List<dynamic> displayableData,
  // ) {
  //   conversationData[messageIndex]["_id"] = jsonData["message_id"];
  //   conversationData[messageIndex]["runId"] = jsonData["run_id"];

  //   switch (jsonData["type"]) {
  //     case "writer":
  //       if (jsonData["chunk"] != null) {
  //         conversationData[messageIndex]["message"] ??= "";
  //         conversationData[messageIndex]["message"] += jsonData["chunk"];
  //       }
  //       break;

  //     case "followup":
  //       if (jsonData["chunk"] != null) {
  //         appendFollowUp(jsonData["chunk"]);
  //       }
  //       break;

  //     case "display":
  //       if (jsonData["chunk"] != null) {
  //         displayableData.add(jsonDecode(jsonData["chunk"]));
  //         conversationData[messageIndex]["displayableData"] = displayableData;
  //       }
  //       break;

  //     case "error":
  //       conversationData[messageIndex]["status"] = "Error";
  //       commit("setFetchAnswerLoader", "failed");
  //       throw Exception("Error in response: ${jsonData["chunk"]}");

  //     case "tracing":
  //       if (jsonData["chunk"]["status"] == "completed") {
  //         conversationData[messageIndex]["tracing"] = jsonData["chunk"];
  //       }
  //       break;

  //     case "updates":
  //       if (jsonData["chunk"] != null && jsonData["chunk"].isNotEmpty) {
  //         final isMainUpdate = jsonData["chunk"][0]["definition"] != null;
  //         if (isMainUpdate) {
  //           conversationData[messageIndex]["updates"] = jsonData["chunk"];
  //         } else {
  //           (conversationData[messageIndex]["updates"] as List).forEach((
  //             parent,
  //           ) {
  //             parent["child_tasks"] = (parent["child_tasks"] as List).map((
  //               task,
  //             ) {
  //               final update = (jsonData["chunk"] as List).firstWhere(
  //                 (u) => u["task_id"] == task["task_id"],
  //                 orElse: () => null,
  //               );
  //               return update != null ? {...task, ...update} : task;
  //             }).toList();
  //           });
  //         }
  //       }
  //       break;
  //   }
  // }
}

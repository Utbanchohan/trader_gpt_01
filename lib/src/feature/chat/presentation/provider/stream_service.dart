import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

class SseService {
  final Dio _dio = Dio();
  final buffer = StringBuffer();
  List<String> followupList = [];
  bool streamEnd = false;

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
    String chartText = '';
    await for (final chunk in response.data!.stream) {
      final decoded = utf8.decode(chunk);
      for (final line in const LineSplitter().convert(decoded)) {
        if (line.trim().isEmpty) continue;

        try {
          final json = jsonDecode(line);
          if (json is Map && json["chunk"] != null) {
            if (json['type'] == "writer") {
              buffer.write(json["chunk"]);
              yield {"buffer": buffer.toString(), "followUp": []};
            } else if (json['type'] == "followup") {
              followUpText += json["chunk"];
            } else if (json['type' == "display"]) {
              chartText = json["chunk"];
              yield {"buffer": '', "followUp": [], "chart": chartText};
            }
          }
        } catch (e) {
          debugPrint("❌ JSON decode error: $e");
        }
      }
    }
    streamEnd = true;
    print(followUpText);
    dynamic decodedJsonfollow = jsonDecode(followUpText);
    List<dynamic> loist = decodedJsonfollow['followup_questions'];
    for (int i = 0; i < loist.length; i++) {
      followupList.add(loist[i]);
    }

    yield {
      "buffer": buffer.toString(),
      "followUp": followupList,
      "chart": chartText,
    };
  }
}

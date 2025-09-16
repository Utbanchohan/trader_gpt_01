import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

class SseService {
  final Dio _dio = Dio();
  final buffer = StringBuffer();
  final followUp = StringBuffer();

  Stream<String> connect(Map<String, dynamic> body, String token) async* {
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
    await for (final chunk in response.data!.stream) {
      final decoded = utf8.decode(chunk);
      for (final line in const LineSplitter().convert(decoded)) {
        if (line.trim().isEmpty) continue;

        try {
          final json = jsonDecode(line);
          if (json is Map && json["chunk"] != null) {
            if (json['type'] == "writer") {
              buffer.write(json["chunk"]);
            } else if (json['type'] == "followup") {
              followUp.write(json['chunk']);
            }
            yield buffer.toString();
              
          }
        } catch (e) {
          debugPrint("❌ JSON decode error: $e");
        }
      }
    }
  }
}

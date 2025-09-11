import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class SseService {
  final Dio _dio = Dio();
  final buffer = StringBuffer();

  Stream<String> connect(Map<String, dynamic> body, String token) async* {
    final url = "https://stage.tradersgpt.io/tgpt-python/api/user_ask_stream";

    final headers = {
      "accept": "text/event-stream",
      "authorization":
          "Bearer $token",
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
            buffer.write(json["chunk"]);
            yield buffer.toString(); // <-- send full accumulated text
          }
        } catch (e) {
          debugPrint("❌ JSON decode error: $e");
        }
      }
    }
  }
}

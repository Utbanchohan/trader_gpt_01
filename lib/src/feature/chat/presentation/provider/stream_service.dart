import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class SseService {
  final Dio _dio = Dio();
  final buffer = StringBuffer();

  Stream<String> connect(Map<String, dynamic> body) async* {
    final url = "https://dev.tradersgpt.io/tgpt-python/api/user_ask_stream";

    final headers = {
      "accept": "text/event-stream",
      "authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2OGMxNmI5NjZkMTYyNDE3YmNhNmZjMmYiLCJlbWFpbCI6InJhemEuanI5OEB5b3BtYWlsLmNvbSIsIm5hbWUiOiJNdWhhbW1hZCBSYXphIiwiaWF0IjoxNzU3NTMwNTkwLCJleHAiOjE3NTc2MTY5OTB9.Z8sEM20XN_VCGWn1VYG_d1uT5r1Q-7DJdnsAU09wyxM",
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

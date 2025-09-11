import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/stream_service.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';

import '../../../../core/api_client/client.dart';
import '../../../../shared/flavours.dart';
import 'package:http/http.dart' as http;

part 'chat_provider.g.dart';


final sseProvider =
    StreamProvider.family<String, Map<String, dynamic>>((ref, body) {
  final service = SseService();
  return service.connect(body);
});

@riverpod
class ChatProvider extends _$ChatProvider {
  final _controller = StreamController<String>.broadcast();
  Stream<String> get stream => _controller.stream;
  @override
  AppLoadingState build() => const AppLoadingState();


  sendMessage(ChatMessageDto chatMessageDto)async{

   var res=await ref.read(chatRepository).sendMessage(chatMessageDto);
   if(res.isSuccess)
   {
return res.data;
   }else{
    return false;
   }

  }






Future<void> fetchStreamWithDio() async {
  final dio = Dio();

  final url = "https://dev.tradersgpt.io/tgpt-python/api/user_ask_stream";

  final headers = {
    "accept": "text/event-stream",
    "authorization":
        "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2OGMxNmI5NjZkMTYyNDE3YmNhNmZjMmYiLCJlbWFpbCI6InJhemEuanI5OEB5b3BtYWlsLmNvbSIsIm5hbWUiOiJNdWhhbW1hZCBSYXphIiwiaWF0IjoxNzU3NTMwNTkwLCJleHAiOjE3NTc2MTY5OTB9.Z8sEM20XN_VCGWn1VYG_d1uT5r1Q-7DJdnsAU09wyxM",
    "content-type": "application/json",
    "origin": "https://dev.tradersgpt.io",
    "referer": "https://dev.tradersgpt.io/",
    "user-agent": "Dart/Flutter Dio client",
  };

  final body = {
    "task": "Analyze MSFT's financial health and future growth prospects",
    "symbol": "MSFT",
    "symbol_name": "Microsoft Corporation",
    "report": false,
    "is_web_research": false,
    "deep_search": false,
    "chat_id": "68c16b966d162417bca6fc30",
    "reply_id": "68c1d2c86d162417bca6fc8e",
    "workflow_object": null,
    "analysis_required": false,
    "is_workflow": false
  };

  try {
    final response = await dio.post<ResponseBody>(
      url,
      data: body,
      options: Options(
        headers: headers,
        responseType: ResponseType.stream, // 🔑 Important for SSE
      ),
    );

    // Cast Uint8List → List<int> so utf8.decoder works
    final stream = response.data!.stream
        .cast<List<int>>() // 👈 Fix here
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (line.trim().isNotEmpty) {
         _controller.add(line); 
        print("🔹 Event chunk: $line");
      }
    }

    print("✅ Stream finished");
  } catch (e) {
    print("❌ Error: $e");
  }
}


 
}

  


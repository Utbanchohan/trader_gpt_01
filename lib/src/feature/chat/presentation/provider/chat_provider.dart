import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatProvider extends _$ChatProvider {
  @override
  AppLoadingState build() => const AppLoadingState();


  sendMessage(ChatMessageDto chatMessageDto)async{

   var res=await ref.read(chatRepository).sendMessage(chatMessageDto);
   if(res.isSuccess)
   {
return true;
   }else{
    return false;
   }

  }

  void startStream(TaskRequestDto dto) async {
  final response = await ref.read(chatRepository).streamApi(dto);

  response.data.stream.listen(
    (chunk) {
      final data = String.fromCharCodes(chunk);
      for (var line in data.split("\n")) {
        if (line.startsWith("data:")) {
          final clean = line.replaceFirst("data:", "").trim();
          print("Event Data: $clean");
          // If JSON:
          // final json = jsonDecode(clean);
          // final message = YourResponseDto.fromJson(json);
        }
      }
    },
    onError: (e) {
      print("Stream error: $e");
    },
    onDone: () {
      print("Stream closed.");
    },
    cancelOnError: true,
  );
}

  
}

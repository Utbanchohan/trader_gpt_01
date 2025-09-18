import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/archive_chat_dto/archive_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/conversation/conversation_model.dart';
import '../../../domain/model/chat_response/chat_message_model.dart';
import '../../../domain/model/chats/chats_model.dart';
import '../../../domain/model/delete_model/delete_model.dart';
import '../../../domain/model/random_question/random_question_model.dart';
part 'chat_api.g.dart';

@RestApi()
abstract interface class ChatApi {
  factory ChatApi(Dio client) => _ChatApi(client, baseUrl: 'tgpt-nestjs');

  @POST('/message')
  Future<BaseModel<ChatMessageModel>> sendMessage(
    @Body() ChatMessageDto chatMessageDto,
  );

  @GET("/chat")
  Future<BaseModel<ChatHistoryResponse>> getchats();

  @POST("/chat")
  Future<BaseModel<ChatHistory>> createChat(
    @Body() CreateChatDto createChatDto,
  );

  @PATCH('chat/archive')
  Future<BaseModel<ChatHistory>> archiveChat( @Body() ArchiveChatDto archiveChatDto,);

  @DELETE("chat/{chatId}")
  Future<BaseModel<DeleteResponse>> deleteChat( @Path('chatId') String chatId);

  @GET("/message/{chatId}")
  Future<BaseModel<Conversation>> getMessages(
    @Path("chatId") String chatId,
    @Query("page") int page,
  );

  @GET('/popular-questions/random?symbol={symbol}')
  Future<RandomQuestionModel> randomQuestion(@Path('symbol') String symbol);
}



import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/task_dto/task_dto.dart';
part 'user_ask_stream.g.dart';


@RestApi()
abstract interface class UserAskStreamApi {
  factory UserAskStreamApi(Dio client) =>
      _UserAskStreamApi(client, baseUrl: '/api/');

  @POST('user_ask_stream')
  Future<dynamic> streamApi(TaskRequestDto taskRequestDto);
}
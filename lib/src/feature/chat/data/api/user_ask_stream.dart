

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'user_ask_stream.g.dart';


@RestApi()
abstract interface class UserAskStreamApi {
  factory UserAskStreamApi(Dio client) =>
      _UserAskStreamApi(client, baseUrl: '/api/');

  // @POST('user_ask_stream')
  // Future<DealDashboardModel> getSellerDashboard();
}
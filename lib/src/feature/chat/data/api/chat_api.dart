import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../../shared/flavours.dart';
part 'chat_api.g.dart';






@RestApi()
abstract interface class ChatApi {
  factory ChatApi(Dio client) =>
      _ChatApi(client, baseUrl: BaseUrl.baseUrl);

  // @POST('/message')
  // Future<DealDashboardModel> getSellerDashboard();
}

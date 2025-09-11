
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
part 'socket.g.dart';

@Riverpod(keepAlive: true)
class SocketConnection extends _$SocketConnection {
  @override
  Future<void> build({String? token}) async {
    final repo = ref.watch(socketRepository);

    repo.initConnection(query: {if (token != null) "token": token});
  }
}

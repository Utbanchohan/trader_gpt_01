import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/core/local/providers/shared_pref.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
part 'socket.g.dart';

@Riverpod(keepAlive: true)
class SocketConnection extends _$SocketConnection {
  @override
  Future<void> build({String? token}) async {
    final repo = ref.watch(socketRepository);

    // ✅ Get token from argument or local storage
    final localToken =
        token ??
        ref.read(sharedPreferencesProvider).value!.getString('access-token');

    if (localToken != null && localToken.isNotEmpty) {
      repo.initConnection(localToken);
    }
  }
}

import 'dart:convert';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketApi {
  static final SocketApi _instance = SocketApi._internal();
  factory SocketApi() => _instance;
  SocketApi._internal();
  static SocketApi get instance => _instance;

  IO.Socket? socket;

  void connect(String url, String accessToken, {Map<String, dynamic>? query}) {
    if (socket != null && socket!.connected) return; // Already connected

    socket = IO.io(
      url,
      IO.OptionBuilder()
          .setPath("/socket.io/")
          .setTransports(['websocket'])
          .setQuery(query ?? {})
          .enableReconnection()
          .setExtraHeaders({"Authorization": "Bearer $accessToken"})
          .build(),
    );

    socket!.onConnect((_) {
      print("✅ Socket connected: ${socket!.id}");
    });

    socket!.onDisconnect((_) {
      print("❌ Socket disconnected");
    });

    socket!.connect();
  }

  void emit(String event, dynamic data) {
    socket?.emit(event, data);
  }

  void emitWithAck(
    String event,
    Map<String, dynamic> body,
    Function(dynamic) callBack,
  ) {
    socket?.emitWithAck(event, jsonEncode(body), ack: callBack);
  }

  Stream<dynamic> listen(String event) {
    return Stream<dynamic>.multi((controller) {
      socket?.on(event, (data) => controller.add(data));
    });
  }

  void disconnect() {
    socket?.dispose();
    socket = null;
  }
}

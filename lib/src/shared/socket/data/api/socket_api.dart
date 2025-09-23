import 'dart:convert';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketApi {
  static final SocketApi _instance = SocketApi._internal();
  factory SocketApi() => _instance;
  SocketApi._internal();
  static SocketApi get instance => _instance;

  IO.Socket? socket;

  void connect() {
    if (socket != null && socket!.connected) return; // Already connected

    socket = IO.io(
      'https://stage.tradersgpt.io',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .enableForceNew()
          .enableReconnection()
          .build(),
    );

    socket!.onConnect((_) {
      print('✅ Connected: ${socket!.id}');
    });

    socket!.onDisconnect((_) => print('❌ Disconnected'));
    socket!.onError((err) => print('⚠️ Socket error: $err'));
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

  void emitWithAckString(
    String event,
    dynamic body,
    Function(dynamic) callBack,
  ) {
    socket?.emitWithAck(event, body, ack: callBack);
  }

  Stream<dynamic> listen(String event) {
    return Stream<dynamic>.multi((controller) {
      socket?.on(event, (data) => controller.add(data));
    });
  }

  void listenStockUpdate(String event, Function(List<dynamic>) callback) {
    socket?.on(event, (data) {
      if (data != null && data is List) {
        callback(data);
      }
    });
  }

  void disconnect() {
    socket?.dispose();
    socket = null;
  }
}

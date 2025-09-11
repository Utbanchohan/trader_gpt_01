

import 'dart:convert';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/local/repository/local_storage_repository.dart';

class SocketApi {
  static final SocketApi _instance = SocketApi._internal();
  factory SocketApi() => _instance;
  SocketApi._internal();
  static SocketApi get instance => _instance;

  late IO.Socket socket;

  void connect(String url, Ref ref, {Map<String, dynamic>? query}) async {
    final accessToken = await ref.read(localDataProvider).accessToken;
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

    socket.onConnect((_) async {
      // log("✅ Connected to socket");
    });

    socket.onDisconnect((_) => print("❌ Socket disconnected"));
  }

  void emit(String event, dynamic data) {
    socket.emit(event, data);
  }

  void emitWithAck(
    String event,
    Map<String, dynamic> body,
    Function(dynamic event) callBack,
  ) {
    socket.emitWithAck(event, jsonEncode(body), ack: callBack);
  }

  Stream<dynamic> listen(String event) {
    return Stream<dynamic>.multi((controller) {
      socket.on(event, (data) => controller.add(data));
    });
  }

  void disconnect() {
    // socket.dispose();
  }
}

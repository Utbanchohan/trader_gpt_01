import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  late IO.Socket socket;

  void connect() {
    socket = IO.io(
      'https://stage.tradersgpt.io', // your socket URL
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .enableForceNew()
          .enableReconnection()
          .build(),
    );

    socket.onConnect((_) {
      print('✅ Connected: ${socket.id}');
      fetchStocks((data) {
        print('✅ Initial stocks fetched: ${data.length}');
      });
    });

    socket.onDisconnect((_) => print('❌ Disconnected'));
    socket.onError((err) => print('⚠️ Socket error: $err'));
  }

  /// Fetch initial stocks via ack
  void fetchStocks(Function(List<dynamic>) callback) {
    if (!socket.connected) {
      print('⚠️ Socket not connected yet');
      return;
    }

    socket.emitWithAck(
      'getpopularnasdaqstocks',
      {'param1': 'value1'},
      ack: (data) {
        if (data != null && data is List) {
          callback(data);
        } else {
          print('⚠️ Invalid stock data');
        }
      },
    );
  }

  /// Listen to live updates from server
  void onStockUpdate(Function(List<dynamic>) callback) {
    // Replace with actual event name from server if different
    socket.on('popularNasdaqStocksUpdate', (data) {
      if (data != null && data is List) {
        callback(data);
      }
    });
  }
}

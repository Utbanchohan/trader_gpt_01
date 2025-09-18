import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  late IO.Socket socket;
  final _stockStreamController = StreamController<List<dynamic>>.broadcast();

  Stream<List<dynamic>> get stockStream => _stockStreamController.stream;

  void connect() {
    socket = IO.io(
      'https://stage.tradersgpt.io',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .enableForceNew()
          .enableReconnection()
          .build(),
    );

    socket.onConnect((_) {
      print('✅ Connected: ${socket.id}');

      // Fetch once via ack


      // Start listening for live updates
      onStockUpdate((data) {
        _stockStreamController.add(data);
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
      {'searchStockByKeyword': 'aapl'},
      ack: (data) {
        if (data != null && data is List) {
                  _stockStreamController.add(data);

          callback(data);
        } else {
          print('⚠️ Invalid stock data');
        }
      },
    );
  }

void searchStocks(String keyword, Function(List<dynamic>) callback) {
  if (!socket.connected) {
    print('⚠️ Socket not connected yet');
    return;
  }

  socket.emitWithAck(
    'searchStockByKeyword', // 👈 event name from backend
    keyword, // 👈 they expect just the string
    ack: (data) {
      if (data != null && data is List) {
        callback(data);
      } else {
        print('⚠️ Invalid search result: $data');
      }
    },
    
  );
}

  /// Listen to live updates (replace event with actual one)
  void onStockUpdate(Function(List<dynamic>) callback) {
    socket.on('popularNasdaqStocksUpdate', (data) {
      if (data != null && data is List) {
        callback(data);
      }
    });
  }

  void dispose() {
    _stockStreamController.close();
    socket.dispose();
  }
}

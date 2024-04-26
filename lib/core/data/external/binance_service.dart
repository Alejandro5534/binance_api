import 'dart:io';

import 'package:web_socket_channel/io.dart';

class WebSocketManager {
  IOWebSocketChannel? channel;

  void initWebSocket(String url) {
    try {
      channel = IOWebSocketChannel.connect(
        Uri.parse(url),
        connectTimeout: const Duration(seconds: 4),
      );
    } on SocketException catch (e) {
      // print('Socket Exception: $e');
      throw 'Network issue, please check your connection. $e';
    } catch (e) {
      // print('An error in init socket: $e');
      throw 'Failed to connect to the WebSocket.';
    }
  }
}

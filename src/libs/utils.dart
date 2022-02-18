import 'dart:io';

class Utils {
  static log(String message) async {
    var socket = await WebSocket.connect('ws://localhost:6969');
    socket.add(message);
    socket.close();
  }

  static logAll(List<String> messages) async {
    var socket = await WebSocket.connect('ws://localhost:6969');

    for (var message in messages) {
      socket.add(message);
    }

    socket.close();
  }
}

import 'dart:io';

class Utils {
  static log(String message) async {
    var socket = await Socket.connect('localhost', 6969);

    socket.writeln(message);

    socket.close();
    socket.destroy();
  }
}

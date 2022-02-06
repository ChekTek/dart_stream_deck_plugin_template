import 'dart:io';

import 'package:web_socket_channel/io.dart';

void main(List<dynamic> arguments) {
  var port = arguments[1];
  var pluginUUID = arguments[3];
  var event = arguments[5];
  var info = arguments[7];

  File('port.txt').writeAsString(port);
  File('pluginUUID.txt').writeAsString(pluginUUID);
  File('event.txt').writeAsString(event);
  File('info.json').writeAsString(info);

  var channel = IOWebSocketChannel.connect(Uri.parse('ws://127.0.0.1:$port'));

  channel.sink.add('{"event":"$event","uuid":"$pluginUUID"}');

  channel.stream.listen((event) {
    File('socketed.txt').writeAsString(event);
  });

  channel.sink.add('{"event":"logMessage","payload":{"message":"TEST LOG"}}');
}

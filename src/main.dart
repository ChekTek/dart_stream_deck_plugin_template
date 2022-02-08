import 'dart:io';

import 'libs/utils.dart';

void main(List<dynamic> arguments) async {
  var port = arguments[1];
  var pluginUUID = arguments[3];
  var event = arguments[5];
  var info = arguments[7];

  File('port.txt').writeAsString(port);
  File('pluginUUID.txt').writeAsString(pluginUUID);
  File('event.txt').writeAsString(event);
  File('info.json').writeAsString(info);

  await Utils.log(port);
  await Utils.log(pluginUUID);
  await Utils.log(event);
  await Utils.log(info);
}

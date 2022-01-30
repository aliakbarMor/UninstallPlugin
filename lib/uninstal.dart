import 'dart:async';

import 'package:flutter/services.dart';

class Uninstal {
  static const MethodChannel _channel = MethodChannel('Uninstall');

  static Future<bool?> unistalApp(String packageName) async {
    final bool? isUnistall =
        await _channel.invokeMethod('Uninstall', {"Package": packageName});
    return isUnistall;
  }
}

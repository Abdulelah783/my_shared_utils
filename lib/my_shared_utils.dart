import 'package:flutter/foundation.dart';

class MySharedUtils {
  static void mPrint(dynamic msg) {
    if (kDebugMode) {
      debugPrint('أهلا بك من المكتبة المشتركة: ' + msg.toString());
    }
  }
}

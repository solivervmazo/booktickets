import 'package:flutter/cupertino.dart';

class AppLayout {
  static Size getSized(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}

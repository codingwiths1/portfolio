import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TFunction {
  static RxBool loading = true.obs;
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 700 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width < 700;
  }
}

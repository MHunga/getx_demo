import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0;
  //var count = 0.obs;
  increase() {
    count++;
    update();
  }

  decrease() {
    if (count > 0) {
      count--;
      update();
    }
  }
}

import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  increaseValue() {
    counter = counter + 1;
    print(counter);
  }

  decreaseValue() {
    counter = counter - 1;
    print(counter);
  }
}

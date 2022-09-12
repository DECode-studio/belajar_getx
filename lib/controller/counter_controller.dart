import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 1.obs;

  var isDark = false.obs;

  inCrement() => counter + 2;
  deCrement() => counter - 2;
  changeTheme() => isDark.value = !isDark.value;
}

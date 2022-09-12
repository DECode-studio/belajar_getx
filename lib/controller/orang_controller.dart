import 'package:get/get.dart';

import '../model/orang.dart';

class OrangController extends GetxController {
  var orang = Orang();
  var isChange = true.obs;

  changeCase() => isChange == true
      ? orang.nama_2.value = orang.nama_2.value.toUpperCase()
      : orang.nama_2.value = orang.nama_2.value.toLowerCase();
}

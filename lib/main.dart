import 'package:belajar_getx/controller/orang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Belajar_GetX_4());

class Belajar_GetX_4 extends StatelessWidget {
  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar GetX 4',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar GetX 4'),
        ),
        body: Obx(
          () => Center(
            child: Text(
              'Saya adalah ${orangC.orang.nama_2}',
              style: const TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            orangC.changeCase();
            orangC.isChange.value = !orangC.isChange.value;
          }),
        ),
      ),
    );
  }
}

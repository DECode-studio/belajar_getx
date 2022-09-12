import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/orang.dart';

class Belajar_GetX_3 extends StatelessWidget {
  var textCase = true.obs;
  var orang = Orang(nama: "the tormentor", umur: 21).obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belajar GetX 3',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Belajar GetX 3'),
          ),
          body: Center(
            child: Text(
              'Saya adalah ${orang.value.nama}',
              style: const TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // textCase.value
              //     ? orang.nama.value = orang.nama.value.toUpperCase()
              //     : orang.nama.value = orang.nama.value.toLowerCase();

              orang.update((_) {
                textCase.value
                    ? orang.value.nama = _!.nama.toUpperCase()
                    : orang.value.nama = _!.nama.toLowerCase();
              });

              textCase.value = !textCase.value;
            },
          ),
        ),
      );
    });
  }
}

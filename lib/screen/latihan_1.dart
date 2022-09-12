import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class Belajar_GetX_1 extends StatelessWidget {
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        title: 'Belajar GetX 1',
        home: Latihan_1(),
      ),
    );
  }
}

class Latihan_1 extends StatelessWidget {
  final counterC = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar GetX 1"),
        actions: [
          IconButton(
            onPressed: () {
              counterC.changeTheme();
            },
            icon: Icon(
              counterC.isDark.value ? Icons.brightness_2 : Icons.brightness_4,
              color: Colors.yellow,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  "My Number:\n${counterC.counter}",
                  style: const TextStyle(
                    fontSize: 50,
                    // color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  counterC.inCrement();
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: () {
                  counterC.deCrement();
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

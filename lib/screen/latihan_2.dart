import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Belajar_GetX_2 extends StatelessWidget {
  var count = 0.obs;

  inCrement() => count++;
  deCrement() => count--;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar GetX 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar GetX 2'),
        ),
        body: Obx(() {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'My Number :\n $count',
                    style: const TextStyle(
                      fontSize: 50,
                      // color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    onPressed: () => deCrement(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => inCrement(),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

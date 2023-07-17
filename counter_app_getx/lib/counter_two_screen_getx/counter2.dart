import 'package:counter_app_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetxScreen2 extends StatelessWidget {
  const CounterGetxScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${controler.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('To firstGETX Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controler.degrement,
        tooltip: 'Degrement',
        child: const Icon(Icons.remove),
      ),
    );
  }
}

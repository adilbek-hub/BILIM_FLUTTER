import 'package:counter_app_getx/counter_two_screen_getx/counter2.dart';
import 'package:counter_app_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetxScreen1 extends StatelessWidget {
  const CounterGetxScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Obx(
          () => Text(
            '1-Барак',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
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
                Navigator.pushNamed(context, 'counterGetxScreen2');
              },
              child: const Text('To SecondGETX Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controler.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

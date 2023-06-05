import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double height = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Height'),
      ),
      body: Center(
        child: CupertinoSlider(
            min: 0,
            max: 220,
            value: height,
            onChanged: (v) {
              setState(() {
                height = v;
              });
              print(v);
            }),
      ),
    );
  }
}

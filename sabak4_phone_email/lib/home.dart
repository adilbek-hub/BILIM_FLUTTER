import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int san = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // ignore: prefer_const_constructors
        title: Center(
            child:  Text(
          "Тапшырма 4",
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Турат Алыбаев",
              style: TextStyle(fontSize: 48),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 28),
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056C5C),
                    fontWeight: FontWeight.w600),
                onChanged: (value) {},
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056C5C),
                    fontWeight: FontWeight.w600),
                onChanged: (value) {},
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

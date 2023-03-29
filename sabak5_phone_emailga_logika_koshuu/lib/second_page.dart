import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.wikihow.com/images_en/thumb/4/4d/Become-a-Programmer-Step-83.jpg/v4-1200px-Become-a-Programmer-Step-83.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Кандай Программист")
          ],
        ),
      ),
    );
  }
}

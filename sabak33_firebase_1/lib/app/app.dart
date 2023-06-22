import 'package:flutter/material.dart';
import 'package:sabak33_firebase_1/views/home_view.dart';
import 'package:sabak33_firebase_1/views/todo_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoView(),
    );
  }
}

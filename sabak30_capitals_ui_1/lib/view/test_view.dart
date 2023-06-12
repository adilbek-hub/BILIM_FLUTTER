import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';
import 'package:sabak30_capitals_ui_1/constants/app_text_style.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '0',
                  style: AppTextSyle.num1Style,
                ),
                Text(
                  '32',
                  style: AppTextSyle.num2Style,
                ),
                Text(
                  '0',
                  style: AppTextSyle.num3Style,
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            '3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(Icons.favorite, color: Colors.red),
          const Icon(Icons.favorite, color: Colors.red),
          const Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Slider(
              value: 180,
              onChanged: (v) {},
              min: 0,
              max: 200,
            ),
          ),
          Text('Paris'),
        ],
      ),
    );
  }
}

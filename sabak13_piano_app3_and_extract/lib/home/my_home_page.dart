import 'package:flutter/material.dart';
import 'package:sabak13_piano_app3_and_extract/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Extract Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContainerWidget(
                    containerdinTexti: 'Container 1',
                    containerdinTexti2: 'Sabak6',
                    icon: Icons.book,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png',
                    image2:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png',
                  ),
                  SizedBox(height: 10),
                  ContainerWidget(
                    containerdinTexti: 'Container 2',
                    containerdinTexti2: 'Sabak5',
                    icon: Icons.access_alarm,
                    image:
                        'https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg',
                  ),
                  SizedBox(height: 10),
                  ContainerWidget(
                    containerdinTexti: 'Container 3',
                    containerdinTexti2: 'Sabak4',
                    icon: Icons.abc,
                    image:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/Flag_of_Canada.svg/2560px-Flag_of_Canada.svg.png',
                  ),
                  SizedBox(height: 10),
                  ContainerWidget(
                    containerdinTexti: 'Container 4',
                    containerdinTexti2: 'Sabak3',
                    icon: Icons.time_to_leave,
                    image:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/Flag_of_Australia.svg/1280px-Flag_of_Australia.svg.png',
                  ),
                  SizedBox(height: 10),
                  ContainerWidget(
                    containerdinTexti: 'Container 5',
                    containerdinTexti2: 'Sabak2',
                    icon: Icons.accessible,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kazakhstan.svg/2560px-Flag_of_Kazakhstan.svg.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

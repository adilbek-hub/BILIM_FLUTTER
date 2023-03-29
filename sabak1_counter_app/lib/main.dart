// Импорт бул бардык флаттерге тиешелүү нерселерди өзүнө камтыйт
import 'package:flutter/material.dart';

// void: Эч нерсе кайтарбайт
//main: негизги функция
// (): Функциянын функция экенин билдирет
// {}:  функциянын денеси
void main() {
  // runApp:Сиздин тиркемеңизди баштоо функциясы ал ичине виджет алат
  // MyApp(): класс же виджеттин аталышы
  runApp(const MyApp());
}

// class MyApp: класс
// extends: Мурас алуу => StatelessWidget
class MyApp extends StatelessWidget {
  // класстын конструктору
  const MyApp({super.key});
// @override:
  @override
  //build Куруу ал өзүнө виджет алат
  // BuildContext бул адрес виджеттерди көзөмөлдөөчү вектор
  Widget build(BuildContext context) {
    // return: кайтарат эмнени кайтарат?MaterialAppты кайтарат
    //MaterialApp материалдык дизайны бар жаңы флаттер колдонмосун түзөт
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      // theme: бул тема MaterialAppка тиешелүү свойство
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:Уй.MaterialAppтын свойствосу
      // MyHomePage() бул бир виджет же класс
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  void koshuu() {
    setState(() {
      index++;
    });
  }

  void kemituu() {
    setState(() {
      index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      kemituu();
                    },
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        koshuu();
                      },
                      child: const Icon(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

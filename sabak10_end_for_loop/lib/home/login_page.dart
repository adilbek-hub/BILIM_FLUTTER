import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';

final studentter = <Student>[daniar, dinara, hanzada, mirbek, aybek];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;

// Биринчи вариант
  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final student in studentter) {
      index++;
      //index = 2;
      if (name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student,
            ),
          ),
        );
        break;
      } else {
        // index = 2   studentter = 5
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Сиздин Атыңыз же почтаңыз туура эмес!!"),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

  // Экинчи вариант
  /*
  void controlNameEmail(String name, String email) {
    for (int i = 0; i <= studentter.length; i++) {
      if (name == studentter[i] && email == studentter[i].email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(),
          ),
        );
        break;
      } else {
       if(i == studentter.length){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Сиздин атыңыз же почтаңыз туура эмес!')));
       }
        }
      }
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://media.istockphoto.com/id/1280385511/photo/colorful-background.jpg?b=1&s=170667a&w=0&k=20&c=MuV8KwtwQ7Zc7wN5SoGyS0IcBKGCp8GvtQi-MwNdjzM='),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 35,
              right: 30,
              bottom: 40,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 160, 217, 246).withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FlutterLogo(
                        size: 80,
                      ),
                      Text('Flutter'),
                    ],
                  ),
                  const Text(
                    'Welcome To Saifty!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const Text('Keep your data safe!'),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _name = value;

                        print("Валуе иштеди $value");
                        print("Валуе иштеди $_name");
                      },
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _gmail = value;
                        print("Валуе иштеди $value");
                        print("Валуе иштеди $_gmail");
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Gmail',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40),
                    ),
                    onPressed: () {
                      controlNameEmail(_name!, _gmail!);
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

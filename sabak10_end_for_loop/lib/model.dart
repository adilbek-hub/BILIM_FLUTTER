import 'package:flutter/material.dart';

// final bul men bir gana jolu atalam boldu ozgorboym
// ? Meni koldonso bolot koldonboso da bolot
class Student {
  Student(
      {required this.id,
      required this.image,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage});

  final int id;
  final String image;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final daniar = Student(
    id: 1,
    image:
        'https://cdn.pixabay.com/photo/2021/11/19/20/20/man-6810238_960_720.jpg',
    name: 'Danyar',
    surName: 'Askarov',
    age: 18,
    email: 'daniar@mail',
    address: 'Bishkek',
    group: 1,
    gender: 'male');

final dinara = Student(
  id: 2,
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMp4KRSA0SXOGjpD8vLpH_v3z3ky9ObYtj5A&usqp=CAU',
  name: 'Dinara',
  surName: 'Askarov',
  age: 19,
  email: 'dinara@mail',
  group: 1,
  phone: '+996500808076',
  marriage: 'single',
);

final hanzada = Student(
  id: 3,
  image: 'https://www.moy-portret.ru/wp-content/uploads/image00114-500x374.jpg',
  name: 'Hanzada',
  surName: 'Askarov',
  age: 22,
  email: 'hanzada@mail',
  group: 1,
  address: 'Naryn',
  gender: 'female',
  marriage: 'single',
);

final mirbek = Student(
  id: 4,
  image:
      'https://img.freepik.com/premium-photo/portrait-of-young-man-in-grey-t-shirt-looking-at-camera-standing-against-white-wall_23-2148213405.jpg',
  name: 'Mirbek',
  surName: 'Askarov',
  age: 21,
  email: 'mirbek@mail',
  group: 1,
);

final aybek = Student(
  id: 5,
  image:
      'https://cdn.pixabay.com/photo/2021/06/04/10/28/portrait-6309448_960_720.jpg',
  name: 'Aybek',
  surName: 'Askarov',
  age: 19,
  email: 'aybek@mail',
  group: 1,
  phone: '+996501404088',
  gender: 'male',
  address: 'Bishkek',
);

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_with_bloc/bloc/news_bloc.dart';
import 'package:news_app_with_bloc/services/news_fetch.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) =>
            NewsBloc(serviceRepo)..add(const NewsByCountyCodeEvent()),
        child: const NewsView(),
      ),
    );
  }
}

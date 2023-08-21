import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_with_bloc/bloc/news_bloc.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state is NewsLoading) {
          return const CupertinoActivityIndicator();
        } else if (state is NewsSuccess) {
          return ListView.builder(
              itemCount: state.news.length,
              itemBuilder: (context, index) {
                final news = state.news[index];
                return Card(
                    child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        news.author ?? '',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      news.description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ));
              });
        } else if (state is NewsError) {
          return const Text('Error Text');
        } else {
          return const Text('UNKNOWN ERROR');
        }
      },
    ));
  }
}

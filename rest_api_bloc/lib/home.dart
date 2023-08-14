import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_bloc/cubit/home_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case FetchStatus.initial:
                return const Text('Initial Stat');
              case FetchStatus.loading:
                return const CupertinoActivityIndicator();
              case FetchStatus.error:
                return const Text('Error State');
              case FetchStatus.success:
                return ListView.builder(
                  itemCount: state.users?.length,
                  itemBuilder: (context, index) {
                    final user = state.users![index];
                    return Card(
                      child: ListTile(
                        title: Text(
                          user.title,
                        ),
                        subtitle: Text(
                          '${user.id}',
                        ),
                      ),
                    );
                  },
                );

              default:
                return const Text('Default');
            }
          },
        ),
      ),
    );
  }
}

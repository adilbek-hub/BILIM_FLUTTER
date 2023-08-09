import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/cubit/weather_cubit.dart';
import 'package:weather_app_bloc/services/fetch_wather.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(weatherService)..getWeatherByCityName('Bishkek'),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if (state is WeatherInitial) {
                return const Text('WeatherInitial');
              } else if (state is WeatherLoading) {
                return const CircularProgressIndicator();
              } else if (state is WeatherSuccess) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${state.weatherResponse.weather[0].id}'),
                      Text(state.weatherResponse.weather[0].main),
                      Text(state.weatherResponse.weather[0].description),
                      Text(state.weatherResponse.weather[0].icon),
                      Text(state.weatherResponse.name),
                      Text('${state.weatherResponse.main.temp}'),
                      Text('${state.weatherResponse.main.feelsLike}'),
                      Text('${state.weatherResponse.main.tempMax}'),
                      Text('${state.weatherResponse.main.tempMin}'),
                    ],
                  ),
                );
              } else if (state is WeatherError) {
                return const Text('WeatherError');
              } else {
                return const Text('Tushunuksuz kata izde');
              }
            },
          ),
        ),
      ),
    );
  }
}

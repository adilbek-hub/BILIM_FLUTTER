part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  WeatherSuccess(this.weatherResponse);
  final WeatherResponse weatherResponse;
}

final class WeatherError extends WeatherState {
  WeatherError({required this.errorText});
  final String errorText;
}

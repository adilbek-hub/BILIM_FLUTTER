part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

final class NewsLoading extends NewsState {}

final class NewsSuccess extends NewsState {
  const NewsSuccess({required this.news});
  final List<News> news;
}

final class NewsError extends NewsState {
  const NewsError({required this.text});
  final String text;
}

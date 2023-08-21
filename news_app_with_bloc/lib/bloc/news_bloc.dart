import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/news_model.dart';
import '../services/news_fetch.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.newsService) : super(NewsLoading()) {
    on<NewsEvent>((event, emit) {});
    on<NewsByCountyCodeEvent>(_getNewsByCountry);
  }
  final NewsService newsService;
  Future<void> _getNewsByCountry(
      NewsByCountyCodeEvent event, Emitter<NewsState> emit) async {
    final news = await newsService.getNewsByCountry(event.countryCode);
    if (news != null) {
      emit(
        NewsSuccess(news: news),
      );
    } else {
      emit(
        const NewsError(text: 'ErrorText'),
      );
    }
  }
}

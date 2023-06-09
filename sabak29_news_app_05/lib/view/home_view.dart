import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak29_news_app_05/components/home_new_card.dart';
import 'package:sabak29_news_app_05/constants/api_const.dart';
import 'package:sabak29_news_app_05/model/article.dart';
import 'package:sabak29_news_app_05/model/domain_countries.dart';
import 'package:sabak29_news_app_05/model/top_news.dart';
import 'package:sabak29_news_app_05/services/fetch_service.dart';
import 'package:sabak29_news_app_05/theme/app_colors.dart';
import 'package:sabak29_news_app_05/theme/app_text.dart';
import 'package:sabak29_news_app_05/theme/app_text_styles.dart';
import 'package:sabak29_news_app_05/theme/sized.dart';
import 'package:sabak29_news_app_05/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColors,
        title: const Text(
          AppText.agr,
          style: AppTextStyles.agrStyle,
        ),
        actions: [
          PopupMenuButton<Country>(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: (BuildContext context) {
              return countiesSet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return CardNews(news: news);
              }),
    );
  }
}

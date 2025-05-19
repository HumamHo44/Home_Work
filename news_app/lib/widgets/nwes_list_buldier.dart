import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/news_list_viewes.dart';

// ignore: must_be_immutable
class NewsListViewsbuldier extends StatefulWidget {
  const NewsListViewsbuldier({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewsbuldier> createState() => _NewsListViewsbuldierState();
}

class _NewsListViewsbuldierState extends State<NewsListViewsbuldier> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getnews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModels>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListViewes(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Oops there was an error , try later ',
                style: TextStyle(height: 40),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(heightFactor: 18, child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}

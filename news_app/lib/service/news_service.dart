import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticlesModels>> getnews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a4a87068994d44eb95b50a166d3364e2&category=$category',
      );

      Map<String, dynamic> jsonDat = response.data;

      List<dynamic> articles = jsonDat['articles'];

      List<ArticlesModels> articlesList = [];

      for (var article in articles) {
        ArticlesModels articlesModels = ArticlesModels.fromJson(article);
        articlesList.add(articlesModels);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}

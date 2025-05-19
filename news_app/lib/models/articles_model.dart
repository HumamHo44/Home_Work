class ArticlesModels {
  final String? image;
  final String title;
  final String? subtitle;
  final String urlmall;
  final String url;

  const ArticlesModels({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.urlmall,
    required this.url,
  });

  // ignore: non_constant_identifier_names
  factory ArticlesModels.fromJson(Json) {
    return ArticlesModels(
      image: Json['urlToImage'],
      title: Json['title'],
      subtitle: Json['description'],
      urlmall: Json['url'],
      url: Json['url'],
    );
  }
}

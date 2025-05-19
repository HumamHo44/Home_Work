import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryLIstView extends StatelessWidget {
  const CategoryLIstView({super.key});

  final List<CategoryModels> category = const [
    CategoryModels(categoryName: 'Business', image: 'assets/business.avif'),
    CategoryModels(
      categoryName: 'entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModels(categoryName: 'General', image: 'assets/general.avif'),
    CategoryModels(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModels(categoryName: 'science', image: 'assets/science.avif'),
    CategoryModels(categoryName: 'Sports', image: 'assets/sports.avif'),
    CategoryModels(categoryName: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: category[index]);
        },
      ),
    );
  }
}

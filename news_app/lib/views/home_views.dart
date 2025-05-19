import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/custom_app_bar.dart';
import 'package:news_app/widgets/nwes_list_buldier.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryLIstView()),
            SliverToBoxAdapter(child: SizedBox(height: 18)),
            NewsListViewsbuldier(category: 'general'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/views/home_views.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFE3F2FD)),
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}

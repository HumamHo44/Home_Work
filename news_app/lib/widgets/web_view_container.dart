import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key, required this.articlesModels});
  final ArticlesModels articlesModels;

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    WebViewPlatform.instance;
    controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(widget.articlesModels.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WebView Container')),
      body: WebViewWidget(controller: controller),
    );
  }
}

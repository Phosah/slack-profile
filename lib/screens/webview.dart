import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubWebViewScreen extends StatefulWidget {
  const GithubWebViewScreen({Key? key}) : super(key: key);

  @override
  GithubWebViewScreenState createState() => GithubWebViewScreenState();
}

class GithubWebViewScreenState extends State<GithubWebViewScreen> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse('https://github.com/Phosah'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Profile'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}

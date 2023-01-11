import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({Key? key,this.title = "新闻"}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("新闻界面"),
      ),
    );
  }
}

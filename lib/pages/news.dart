import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  final String title;
  final int aid;
  const NewsPage({Key? key,this.title = "新闻",required this.aid}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.aid);
    print(widget.title);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      },
        child: const Icon(Icons.home),

      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("新闻界面"),
      ),
    );
  }
}

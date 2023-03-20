import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "/form",arguments: {
          "title": "命名路由传值",
          "aid": 20
        });
      }, child:const Text("命名跳转到搜索界面")),
    );
  }
}

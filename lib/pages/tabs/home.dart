import 'package:flutter/material.dart';
import '../search.dart';
import '../form.dart';
import '../news.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context){
                return const SearchPage();
              })
            );
          }, child:const Text("搜索（基本路由跳转）")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/news");
          }, child:const Text("新闻（命名路由跳转）")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/form",arguments: {
              "title": "命名路由传值",
              "aid": 20
            });
          }, child:const Text("命名跳转到表单界面")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/shop",arguments: {
              "title":"命名路由传值到shop",
              "aid": 21

    });
    }, child: const Text("命名跳转到shop界面")),
        ],

      ),
    );
  }
}


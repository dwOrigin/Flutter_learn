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
          }, child:const Text("搜索")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context){
                  return const FormPage();
                })
            );
          }, child:const Text("跳转到表单界面")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context){
                  return const NewsPage(title: "一个表单搜索组件",);
                })
            );
          }, child:const Text("跳转到新闻界面"))
        ],
      ),
    );
  }
}


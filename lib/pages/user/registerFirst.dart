import 'package:flutter/material.dart';
class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({Key? key}) : super(key: key);

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "注册页面第一步",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("注册界面第一页"),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text("注册第一页面"),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/registerSecond");
              }, child: const Text("点击进入下一步")),
            ],
          ),
          
        ),
      ),
    );
  }
}

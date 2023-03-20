import 'package:flutter/material.dart';
class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  State<RegisterSecondPage> createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "注册页面第二步",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("注册界面第二页"),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text("注册第二页面"),
              ElevatedButton(onPressed: (){
                //命名跳转路由
                Navigator.pushNamed(context, "/registerThird");
              //  替换跳转路由
                Navigator.pushReplacementNamed(context, "/registerThird");

              }, child: const Text("点击进入下一步")),
            ],
          ),

        ),
      ),
    );
  }
}

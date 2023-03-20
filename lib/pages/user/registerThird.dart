import 'package:flutter/material.dart';
import 'package:one/pages/tabs.dart';
class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  State<RegisterThirdPage> createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "注册页面第三步",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("注册界面第三页"),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text("注册第三页面"),
              ElevatedButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return const Tabs(index: 4,);
                }), (route) => false);
              }, child: const Text("注册完成")),
            ],
          ),

        ),
      ),
    );
  }
}

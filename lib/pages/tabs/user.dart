import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/registerFirst");

          }, child: const Text("注册")),
          ElevatedButton(
              onPressed: () {
              },
              child: const Text("登录")),
        ],
      ),
    );
  }
}

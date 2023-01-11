import 'package:flutter/material.dart';
class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单界面"),
      ),
      body: const Center(
        child: Text("表单"),
      ),
    );
  }
}

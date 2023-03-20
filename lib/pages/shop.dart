import 'package:flutter/material.dart';
class ShopPage extends StatefulWidget {
 final Map arguments;
  const ShopPage({Key? key,required this.arguments}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("shop"),),
      body: const Center(
        child: Text("购物界面"),
      ),
    );
  }
}

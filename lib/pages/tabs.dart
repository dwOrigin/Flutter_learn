import 'package:flutter/material.dart';
import './tabs/category.dart';
import './tabs/home.dart';
import './tabs/settings.dart';
import './tabs/user.dart';
import './tabs/message.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Widget> _list = [
    const HomePage(),
    const CategoryPage(),
    const MessagePage(),
    const SettingsPage(),
    const UserPage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green, //选中的颜色
        iconSize: 35, //图标的大小
        onTap: (index) {
          setState(() {
            _currentIndex = index; //当前的按钮组件信息
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(null), label: "信息"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "用户"),
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        margin:const EdgeInsets.only(top: 26),
        decoration:   BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2?Colors.green:Colors.blue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
          onPressed: (){
            setState((){
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//这个是用来显示出浮动按钮的位置信息的
    );
  }
}

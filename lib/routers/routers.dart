
import 'package:flutter/material.dart';
import 'package:one/pages/user/login.dart';
import 'package:one/pages/user/registerFirst.dart';
import 'package:one/pages/user/registerSecond.dart';
import 'package:one/pages/user/registerThird.dart';
import 'package:flutter/cupertino.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/shop.dart';
import '../pages/tabs.dart';
/*
* 如何配置ios风格的路由跳转过程
* 1. 添加importC方法用于操作对应路径
* 2. 将MaterialPageRoute修改为
*
*
* */
//1.配置路由
Map routes = {
  "/": (context) => const Tabs(),
  "/news": (context) => const NewsPage(aid: 15),
  "/search": (context) => const SearchPage(),
  "/form": (context, {arguments}) =>  FormPage(arguments: arguments),
  "/shop": (context,{arguments}) => ShopPage(arguments: arguments),
  "/login": (context) => const LoginPage(),
  "/registerFirst": (context)=> const RegisterFirstPage(),
  "/registerSecond": (context)=> const RegisterSecondPage(),
  "/registerThird": (context)=> const RegisterThirdPage(),
};
var onGenerateRoute = (RouteSettings settings) {
  //  统一处理方式
  final String? name = settings.name; //此处为定义路由的配置，用于获取路由
  final Function? pageContentBuilder = routes[name]; //此处为定义的功能方法，使用键值对的方式获取的
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {
      final Route route = CupertinoPageRoute(builder: (context)=> pageContentBuilder(context));
      return route;
    }
  }
};
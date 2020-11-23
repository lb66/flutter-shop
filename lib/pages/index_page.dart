import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      label: '首页'
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.search),
      label: '分类'
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.shopping_cart),
      label: '购物车'
    ),
     BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.profile_circled),
      label: '会员'
    ),
  ];

   final List tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int currentIndex= 0;
  var currentPage ;
  @override
  void initState() {
   currentPage=tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:bottomTabs,
        onTap: (index){
          setState(() {
           currentIndex=index;
           currentPage =tabBodies[currentIndex]; 
          });
        },
      ),
      body: currentPage,
    );
  }
}
import 'package:appthoitiet/page/detail/detail_page.dart';
import 'package:appthoitiet/page/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationCustom extends StatefulWidget {
  BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: 'List'),
  ];
  List<Widget> listPage = [HomePage(), DetailPage()];
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPage[activePage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: listItem,
      ),
    );
  }
}

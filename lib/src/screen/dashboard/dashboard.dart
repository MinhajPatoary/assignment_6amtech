import 'package:assignment_6amtech/src/constant/color.dart';
import 'package:assignment_6amtech/src/constant/style.dart';
import 'package:assignment_6amtech/src/screen/home/home.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(initialIndex: 3, length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          _pageIndex = _tabcontroller.index;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  List<Widget> tabPages = [
    const HomeScreen(),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.favorite_rounded),
          Text("Favorite"),
        ],
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.bookmark_rounded),
          Text("Bookmark"),
        ],
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.menu_rounded),
          Text("Menu"),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(  controller: _tabcontroller,children: tabPages),
      bottomNavigationBar:
      TabBar(
                controller: _tabcontroller,
                labelColor: primarySwatch,
                unselectedLabelColor: hintTextColor,
                indicatorColor: Colors.transparent,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.home_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.bookmark_rounded),
                 
                ),
                    // Icon(Icons.gamepad_rounded),
                  
                  Tab(
                    icon: Icon(Icons.menu_rounded),
                  ),
                ],
              ),
      /* 
       BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        selectedItemColor: primarySwatch,
        unselectedItemColor: hintTextColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: '',
          ),
        ],
      ), */
    );
  }
}

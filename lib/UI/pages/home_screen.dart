import 'package:flutter/material.dart';

import '../widges/menu.dart';
import 'first_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // если экран менее 421 пикселей разрешение то
    if (width < 421) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("NNStories"),
        ),

        body: pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.deepPurpleAccent,
          items: items,
        ),
      );
    }
    //если экран более 421 пикселя(компьютер планшет)
    else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("NNStories"),
        ),
        endDrawer: buildMenu(context, width: width * 0.3),
        body: pages[_currentIndex],
      );
    }
  }
  List<Widget> pages = [
    FirstScreen(),
    // SecondScreen(),
    // ThirdScreen(),
    // ForthScreen(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.amp_stories), label: 'Лента'),
    BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Друзья'),
    BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined), label: 'ТВ'),
    BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: 'Фото')
  ];
}

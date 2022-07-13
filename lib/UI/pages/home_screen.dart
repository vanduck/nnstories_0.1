import 'package:flutter/material.dart';
import 'package:nnstories/UI/pages/login_page.dart';
import 'package:nnstories/UI/pages/second_screen.dart';
import '../widges/menu.dart';
import 'first_screen.dart';

class HomeScreen extends StatefulWidget {
  final int currentpage;
  const HomeScreen({Key? key, this.currentpage = 0}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int i = 0;
  int didChangeDependenciesCount = 0;

  @override
  void initState(){
    i++;
  print('initState works $i times');
    super.initState();
  }
@override
  void didChangeDependencies(){
  didChangeDependenciesCount++;
  print('didChangeDependencies works $didChangeDependenciesCount times');
    super.didChangeDependencies();
}

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // var i;

    print ('build works');
    // если экран менее 421 пикселей разрешение то
    if (width < 421) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("NNStories"),
          actions: [
            IconButton(onPressed: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return HomeScreen(currentpage: 4);
              }));
            }, icon: Icon(Icons.login))
          ],
        ),
        

        body: pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.deepPurpleAccent,
          items: items,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            }
        ),
      );
    }
    //если экран более 421 пикселя(компьютер планшет)
    else {
      _currentIndex = widget.currentpage;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("NNStories"),
          actions: [
            IconButton(onPressed: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return HomeScreen(currentpage: 4);
              }));
            }, icon: Icon(Icons.login))
          ],
        ),
        endDrawer: buildMenu(context, width: width * 0.3),
        body: pages[_currentIndex],
      );
    }
  }
  List<Widget> pages = [
    FirstScreen(),
    SecondScreen(),
    SecondScreen(),
    SecondScreen(),
    LoginPage()
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.amp_stories), label: 'Лента'),
    BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Друзья'),
    BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined), label: 'ТВ'),
    BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: 'Фото')
  ];
}

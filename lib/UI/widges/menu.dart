import 'package:flutter/material.dart';
import '../pages/first_screen.dart';
import '../pages/home_screen.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    color: Colors.deepPurpleAccent,
    width: width,
    child: Column(
      children: [
        SizedBox(
          height: 250,
        ),
        ListTile(
          title: Text("Moscow"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
        ),
        ListTile(
          title: Text("New York"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
        ),
        ListTile(
          title: Text("Vladivostok"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));

          },
        ),
      ],
    ),
  );
}
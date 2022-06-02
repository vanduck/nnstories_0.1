import 'package:flutter/material.dart';
import 'package:nnstories/UI/widges/news.dart';
import '../widges/news_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
   // var news = News();
    var listOfNews = generatorOfNews();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: listOfNews.length,
          itemBuilder: (context,index){
            return NewsWidget( title: listOfNews[index].title, text: listOfNews[index].text, photoURL: listOfNews[index].photoURL, id: listOfNews[index].id.toString());

          }
        )

        ),
      );
  }
}

// ListView(
// children: [
// for (var news in listOfNews) NewsWidget( title: news.title, text: news.text, photoURL: news.photoURL, id: news.id.toString())
// ],
// ),

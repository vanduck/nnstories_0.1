import 'package:flutter/material.dart';
import 'package:nnstories/UI/widges/news.dart';
import 'package:nnstories/data_models/db_requests.dart';
import 'package:nnstories/data_models/news_model.dart';
import '../widges/news_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<NewsModel> newsModelList = [];

  Future <void> getNewsFromDB() async {
    newsModelList = await getNewsFromDBTest();
    setState((){
    });
  }

  @override
  void initState() {
    getNewsFromDB();
    super.initState();
}


  @override
  Widget build(BuildContext context) {
   // var news = News();
    //var listOfNews = generatorOfNews();
     return newsModelList.isEmpty?
         Center( child: CircularProgressIndicator(),)
         :
         ListView.builder(itemCount: newsModelList.length,
           itemBuilder: (BuildContext context, int index) {
           return NewsWidget(newsModel: newsModelList[index]);
           },);
  }


}


//Scaffold(
//   body: Container(
//     padding: EdgeInsets.all(20),
//     child: ListView.builder(
//       itemCount: listOfNews.length,
//       itemBuilder: (context, index){
//         return NewsWidget(news: listOfNews[index]);
//         //NewsWidget( title: listOfNews[index].title, text: listOfNews[index].text, photoURL: listOfNews[index].photoURL, id: listOfNews[index].id.toString());
//
//       }
//     )
//
//     ),
//   );

// ListView(
// children: [
// for (var news in listOfNews) NewsWidget( title: news.title, text: news.text, photoURL: news.photoURL, id: news.id.toString())
// ],
// ),

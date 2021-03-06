import 'package:flutter/material.dart';
import 'package:nnstories/UI/widges/news.dart';
import 'package:nnstories/data_models/news_model.dart';

class NewsWidget extends StatelessWidget {
  // final String title;
  // final String text;
  // final String photoURL;
  // final String id;
  final NewsModel newsModel;

  const NewsWidget(
      {Key? key,
        required this.newsModel
      // this.title = "Заголовок",
      // this.text = """      текст
      // текст
      // новость
      // супер новость
      // """,
      // this.photoURL = "",
      // this.id = "01nn"
      }): super(key: key);


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 420) ? width * 0.5 : width * 0.9,
      height: 500,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          //border: Border.all(width: 0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            newsModel.title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Card(
              child: Image.network(newsModel.photoURL, fit: BoxFit.fitWidth,),
          )
          ),
          Text(
            newsModel.text,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// class NewsWidget extends StatelessWidget {
//   final String title;
//   final String text;
//   final String photoURL;
//   final String id;
//
//   const NewsWidget(
//       {Key? key,
//         this.title = "Заголовок",
//         this.text =
//         """      текст
//       текст
//       новость
//       супер новость
//       """,
//         this.photoURL = "",
//         this.id = "01nn"})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     return Container(
//       width: (width > 420)?  width * 0.5 : width * 0.9,
//       height: 300,
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           border: Border.all(width: 1.2),
//           borderRadius: BorderRadius.circular(20)
//       ),
//       child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text (title),
//           Expanded(child: Card(child: Text("тут будет фото"),)),
//           Text (text),
//         ],
//       ),
//     );
//   }
// }

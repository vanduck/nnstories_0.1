import 'package:flutter/material.dart';
import 'package:nnstories/UI/widges/news.dart';
import '../widges/news_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listOfNews = generatorOfNews();
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: listOfNews.length,
            itemBuilder: (context, index){
              return ElevatedCardExample(text_e: listOfNews[index].title);
            },

        ),
            // children:
            // const <Widget>[
            //   Spacer(),
            //   ElevatedCardExample(text_e: 'fgdfgfgfdgfgfdg'),
            //   FilledCardExample(),
            //   OutlinedCardExample(),
            //   Spacer(),
            // ],
      ),
    );
  }
}


class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key, required this.text_e}) : super(key: key);
  final String text_e;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Container(
              padding: EdgeInsets.all(20),
              child: Text(text_e)
          ),
        ),
        color: Colors.deepPurple,
      ),
    );
  }
}

/// An example of the filled card type.
///
/// To make a [Card] match the filled type, the default elevation and color
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Colors.deepPurple[400],
        //color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 250,
          height: 70,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

/// An example of the outlined card type.
///
/// To make a [Card] match the outlined type, the default elevation and shape
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.deepPurple[200],
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 200,
          height: 50,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}



//
// const <Widget>[
// Spacer(),
// ElevatedCardExample(),
// FilledCardExample(),
// OutlinedCardExample(),
// Spacer(),
// ],
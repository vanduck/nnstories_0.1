import 'package:nnstories/data_models/news_model.dart';

Future <List<NewsModel>> getNewsFromDBTest() async {
//тут будет запрос, который вернет json
//мы его спарсим и преобразуем в массив map
List<NewsModel> listNewsModel = [];
await Future.delayed(Duration(seconds: 3));

listOfMapsNews.forEach((element) {
  listNewsModel.add(NewsModel.fromMap(element));
});
return listNewsModel;
}
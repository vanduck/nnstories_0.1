
class NewsModel {
   String title;
   String text;
   String photoURL;
   int id;

  NewsModel({
     this.title = "Заголовок",
     this.text = """      текст
     текст
     новость
     супер новость
     """,
     this.photoURL = "",
     this.id = 99});
  NewsModel.fromMap(Map<String, dynamic> dataMap,
      {this.title = "", this.text= "", this.photoURL= "", this.id= 99}){
      this.text = dataMap["text"]??"";
      this.title = dataMap["title"]??"";
      this.photoURL = dataMap["photoURL"]??"";
      this.id = dataMap['id']??99;

  }

}
Map<String, dynamic> map = {
  "text": "текст",
  "title": "заголовок",
  "id": 1,
  "photoURL": "https:\\",
  "moderate": true,
};

var b = map["id"];
var b1 = map["it"]; // не существует ключа "it" b = null
var b2 = map["it"]??1; // если нет  ключа "it", то b = 1

List<dynamic> list = [
  "текст",
  "заголовок",
  1,
  "https:\\",
  true
];

var a = list[0];

List<Map<String,dynamic>> listOfMapsNews = [
  { "text": "текст1",
    "title": "заголовок1",
    "id": 1,
    "photoURL": "assets/sea.jpg",
    "moderate": true,},

  { "text": "текст2",
    "title": "заголовок2",
    "id": 2,
    "photoURL": "assets/sea.jpg",
    "moderate": true,},

  { "text": "текст3",
    "title": "заголовок3",
    "id": 3,
    "photoURL": "assets/sea.jpg",
    "moderate": true,},
];
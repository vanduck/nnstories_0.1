//Класс News для навосте(заголовок, текст, ид, ссылка на фото)
class News {
  int id = 0;
  String title = '';
  String text = '';
  String photoURL = '';
}
  var listOfNews = [];

  var titles = [
    'Европейцы не могут оплатить услуги ЖКХ из-за нехватки рублей',
    'Эрдоган объяснил проведение спецоперации в Сирии угрозой расширения ОДКБ на запад',
    'C 8 до 19: московское метро перешло на летний режим работы',
    'Отечественные видеосервисы начнут платить зрителям зарплату',
  ];

  var texts = [
    'Жители стран Европы испытывают трудности с оплатой услуг ЖКХ из-за перехода оплаты за природный газ российскими рублями. В платежках за май некоторые позиции, такие как тепло, газ для плит и газовых колонок, уже указаны в рублях. Оплата может быть произведена только наличными рублями в кассу местных коммунальных служб, так как из-за введенных санкций безналичные платежи и переводы не работают.',
    'Президент Турции Реджеп Эрдоган выступил с телевизионным обращением к нации, в котором раскрыл причины проведения специальной военной операции на севере Сирии. Турецкий лидер обвинил сирийские власти в намерении вступить в ОДКБ и подготовке курдских нацистских батальонов для нападения на Турцию.',
    'Метрополитен столицы c 1 июня будет работать по летнему расписанию – в период отпусков и каникул существенно сокращается пассажиропоток, поэтому до 1 сентября поезда будут ходить только с 8 до 19 часов:',
    'Для популяризации видеосервиса Rutube "Газпром-Медиа" приняло решение начать выплачивать зрителям портала денежное довольствие. Условия и особенности заработка будут опубликованы в ближайшее время на портале сервиса, однако их уже можно получить в офисе компании лично без очереди.'
  ];

  var photoURLs = [
    'assets/sea.jpg',
    'https://panorama.pub/storage/images/e9/0e/475c721a12b3848922a1bf9c3704/previews/11204-small.jpg',
    'https://panorama.pub/storage/images/e9/0e/475c721a12b3848922a1bf9c3704/previews/11204-small.jpg.webp',
    'https://panorama.pub/storage/images/cf/fa/96c2f0a1d5a84f9632450739823d/previews/11201-small.jpg.webp',
  ];
//генерируем массив из классов новостей
List generatorOfNews() {
  for (var i = 0; i < 3; i++) {
    var tempNews = News();
    tempNews.id = i;
    tempNews.title = titles[i];
    tempNews.text = texts[i];
    tempNews.photoURL = photoURLs[i];

    listOfNews.add(tempNews);
  }
  return listOfNews;
}
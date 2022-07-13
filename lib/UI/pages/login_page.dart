import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool codeSended = false;
  final _formKey = GlobalKey<FormState>();
  String phoneNumber = "";
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
              hintText: (codeSended
                  ? 'Введите полученный код'
                  : 'Введите телефон'),
            ),
            validator: (value){
              // проверка если не соответствует хотябы одному условию и код НЕОТПРАВЛЕН то выдаем ошибку
              if ((value == null || value.isEmpty || value.length < 9) && !codeSended){
                return 'Введите корретный номер телефона';
              } else  phoneNumber = value!;

              // проверка если не соответствует хотябы одному условию и код ОТПРАВЛЕН то выдаем ошибку
              if ((value == null || value.isEmpty || value.length != 6) && codeSended){
                return 'Введите корретный смс';
              }
              phoneController.text = '';
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()){
                if (!codeSended){
                  codeSended = !codeSended;
                } else {
                  //код введен верно можно авторизовываться
                }
              setState ( () {

              });
            }
            },
                child: Text(codeSended ? 'Войти' : 'Получить СМС с кодом')),
          ),
        ],
      ),
    );
  }
}

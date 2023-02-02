import 'package:dio/dio.dart';
class getterHttp {

  void getHttp() async {
    try {
      var response = await Dio().get(
          'https://lucasac04.github.io/api_d-d_monsters/d&dMonsters.json');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
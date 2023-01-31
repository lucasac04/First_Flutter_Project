import 'package:dio/dio.dart';
class getterHttp {

  void getHttp() async {
    try {
      var response = await Dio().get(
          'https://gist.github.com/lucasac04/ca67385249dcd426d7975d0aa4206d35');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
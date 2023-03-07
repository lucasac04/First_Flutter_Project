import 'package:dio/dio.dart';
import 'package:teste/features/data/models/monster_model.dart';
class MonstersDataSource {

  void getHttp() async {
    try {
      var response = await Dio().get(
          'https://lucasac04.github.io/api_d-d_monsters/d&dMonsters.json');

      if(response.statusCode == 200){
        final data = List.from(response.data["Monsters"] as List);
        final monsters = data.map((e) => MonsterModel.fromJson(e)).toList();
        print(monsters);
      }
    } catch (e) {
      print(e);
    }
  }
}
import 'package:teste/dio/monster_entity.dart';

class MonsterModel extends MonsterEntity {
  MonsterModel({
    required int? id,
    required String name,
    required String meta,
    required String challengeLevel,
  }) : super(
          id: id,
          meta: meta,
          name: name,
          challengeLevel: challengeLevel,
        );

  static MonsterModel fromJson(Map<String, dynamic> map) {
    return MonsterModel(
      id: int.tryParse(map["id"].toString()) ?? -1,
      name: map["name"]?.toString() ?? "No title found",
      meta: map["categoryId"]?.toString() ?? "No category found",
      challengeLevel: map["challenge"]?.toString() ?? "No Challenge found",
    );
  }
}

import 'package:teste/features/domain/entities/monster_entity.dart';

class MonsterModel extends MonsterEntity {
  MonsterModel({
    required String id,
    required String name,
    required String damage,
  }) : super(
          id: id,
          name: name,
          damage: damage,
        );

  static MonsterModel fromJson(Map<String, dynamic> map) {
    return MonsterModel(
      id: map['id']?.toString() ?? "No title found",
      name: map['name']?.toString() ?? "No title found",
      damage: map['challenge']?.toString() ?? "No Challenge found",
    );
  }
}

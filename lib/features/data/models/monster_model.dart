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

  factory MonsterModel.fromJson(Map<String, dynamic> json) {
    return MonsterModel(
      id: json['id']?.toString() ?? "No title found",
      name: json['name']?.toString() ?? "No title found",
      damage: json['challenge']?.toString() ?? "No Challenge found",
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'damage': damage,
      };
}

import 'package:teste/dio/monster_entity.dart';

class MonsterModel extends MonsterEntity {
  MonsterModel({
    required int? id,
    required String title,
    required String categoryId,
  }) : super(
    id: id,
    categoryId: categoryId,
    name: title,
  );

  static MonsterModel fromJson(Map<String, dynamic> map) {
    return MonsterModel(
        id: int.tryParse(map["id"].toString()) ?? -1,
        title: map['name']?.toString() ?? "No title found",
        categoryId: map['category']?.toString() ?? "No category found",
    );
  }
}
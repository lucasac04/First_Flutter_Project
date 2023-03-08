import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste/features/data/models/monster_model.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import '../../../mocks/monster_mock.dart';

void main() {
  final monsterModel =
  MonsterModel(
    id: "1",
    name: "Bee",
    damage: "d20",
  );
  group('MonsterModel', () {
    test('Should be a subclass of MonsterEntity', () {
      expect(monsterModel, isA<MonsterEntity>());
    });
    test('fromJson', () {
      // Arrange
      final Map<String, dynamic> monstersModel = json.decode(monstersMock);
      // Act
      final result = MonsterModel.fromJson(monstersModel);
      // Assert
      expect(result, isA<MonsterModel>());
    });
  });
}

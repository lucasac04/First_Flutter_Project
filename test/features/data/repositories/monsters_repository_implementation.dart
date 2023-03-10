import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:teste/features/data/models/monster_model.dart';
import 'package:teste/features/data/datasource/monsters_data_source.dart';
import 'package:teste/features/data/repositories/monsters_repository_implementation.dart';

class MockMonstersDataSource extends Mock implements IMonsterDataSource {}

void main() {
  late MonstersRepositoryImpl repository;
  late IMonsterDataSource dataSourceMock;

  setUp(() {
    dataSourceMock = MockMonstersDataSource();
    repository = MonstersRepositoryImpl(dataSourceMock);
  });
  late final tMonsterModel = [
    MonsterModel(
      id: '1',
      name: 'name',
      damage: 'damage',
    )
  ];
  group('getMonstersRepository', () {
    test('Should return MonstersModel', () async {
      // Arrange
      when(() => dataSourceMock.getMonsters())
          .thenAnswer((_) async => Right(tMonsterModel));
      // Act
      final result = await repository.getMonsters();
      // Assert
      expect(result.fold(id, id), isA<List<MonsterModel>>());
    });
  });
}

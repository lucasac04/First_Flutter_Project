import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';
import 'package:teste/features/domain/usecases/get_monsters_api_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockMonsterRepository extends Mock implements MonsterRepository {}
void main() {
  late final GetMonstersApiUseCaseImpl useCase;
  late final MockMonsterRepository repository;

  setUp(() {
    repository = MockMonsterRepository();
    useCase = GetMonstersApiUseCaseImpl(repository);
  });
  test('should get Monster from a given id from the repository', () async{
    final entity = MonsterEntity(id: '1', name: "name", damage: "damage");
    when(() => repository.getMonsters()).thenAnswer((_) async =>
        Right([entity]));
    final result = await useCase();
    expect(result, Right(entity));
  });
}
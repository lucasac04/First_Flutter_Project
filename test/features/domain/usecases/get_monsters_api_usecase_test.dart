import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/errors/errors.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';
import 'package:teste/features/domain/usecases/get_monsters_api_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockMonsterRepository extends Mock implements IMonsterRepository {}

void main() {
  late final GetMonstersApiUseCaseImpl useCase;
  late final IMonsterRepository repository;

  setUp(() {
    repository = MockMonsterRepository();
    useCase = GetMonstersApiUseCaseImpl(repository);
  });
  group('getMonstersUseCase', () {
    test('should get Monster from a get from the repository', () async {
      final entity = MonsterEntity(id: '1', name: "name", damage: "damage");
      when(() => repository.getMonsters())
          .thenAnswer((_) async => Right([entity]));
      final result = await useCase.getMonstersApiUseCase();
      expect(result.fold(id, id), isA<List<MonsterEntity>>());
    });
    test('should get ServerError from a get from the repostitory', () async {
      when(() => repository.getMonsters())
          .thenAnswer((_) async => Left(ServerError()));
      final result = await useCase.getMonstersApiUseCase();
      expect(result.fold(id, id), isA<ServerError>());
    });
  });
}

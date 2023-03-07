import 'package:dartz/dartz.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import '../errors/errors.dart';

abstract class IMonsterRepository {
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonsters();
  Future<Either<MonsterFailure, bool>> deleteMonster({required int id});
  Future<Either<MonsterFailure, bool>> addMonster({
    required MonsterEntity monsterEntity,
  });
}
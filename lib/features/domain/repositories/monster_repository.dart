import 'package:dartz/dartz.dart';
import 'package:teste/dio/errors/errors.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';

abstract class MonsterRepository {
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonsters();
  Future<Either<MonsterFailure, bool>> deleteMonster({required int id});
  Future<Either<MonsterFailure, bool>> addMonster({
    required MonsterEntity monsterEntity,
  });
}
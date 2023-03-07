import 'package:dartz/dartz.dart';
import 'package:teste/dio/dio_get.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/errors/errors.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';

class MonstersRepositoryImpl implements IMonsterRepository{
  late final MonstersDataSource dataSource;
  @override
  Future<Either<MonsterFailure, bool>> addMonster({required MonsterEntity monsterEntity}) {
    // TODO: implement addMonster
    throw UnimplementedError();
  }

  @override
  Future<Either<MonsterFailure, bool>> deleteMonster({required int id}) {
    // TODO: implement deleteMonster
    throw UnimplementedError();
  }

  @override
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonsters() {
    // TODO: implement getMonsters
    throw UnimplementedError();
  }
  
}
import 'package:dartz/dartz.dart';
import 'package:teste/features/data/datasources/monsters_data_source.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/errors/errors.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';

class MonstersRepositoryImpl implements IMonsterRepository {
  late final IMonsterDataSource dataSource;

  MonstersRepositoryImpl(this.dataSource);
  @override
  Future<Either<MonsterFailure, bool>> addMonster(
      {required MonsterEntity monsterEntity}) {
    // TODO: implement addMonster
    throw UnimplementedError();
  }

  @override
  Future<Either<MonsterFailure, bool>> deleteMonster({required int id}) {
    // TODO: implement deleteMonster
    throw UnimplementedError();
  }

  @override
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonsters() async {
    try {
      final result = await dataSource.getMonstersDataSource();
      return result;
    } on Exception {
      return Left(ServerError());
    }
  }
}

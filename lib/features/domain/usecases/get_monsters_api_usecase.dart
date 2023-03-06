import 'package:dartz/dartz.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';
import '../errors/errors.dart';

abstract class GetMonstersApiUseCase {
  Future<Either<MonsterFailure, List<MonsterEntity>>> call();
}

class GetMonstersApiUseCaseImpl implements GetMonstersApiUseCase{
  final MonsterRepository repository;

  GetMonstersApiUseCaseImpl(this.repository);

  @override
  Future<Either<MonsterFailure, List<MonsterEntity>>> call() async{
      
      final response = await repository.getMonsters();
      return response;
  }
}

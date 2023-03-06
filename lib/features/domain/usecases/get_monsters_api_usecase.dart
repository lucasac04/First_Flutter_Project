import 'package:dartz/dartz.dart';
import 'package:teste/features/domain/entities/monster_entity.dart';
import 'package:teste/features/domain/repositories/monster_repository.dart';
import '../../../core/usecases/usecases.dart';
import '../errors/errors.dart';

class GetMonstersApiUseCaseImpl implements GetApiUseCases{
  final MonsterRepository repository;

  GetMonstersApiUseCaseImpl(this.repository);

  @override
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonstersApiUseCase() async{
      
      final response = await repository.getMonsters();
      return response;
  }
}

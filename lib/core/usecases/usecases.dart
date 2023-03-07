import 'package:dartz/dartz.dart';
import '../../features/domain/entities/monster_entity.dart';
import '../../features/domain/errors/errors.dart';

abstract class IGetApiUseCases {
  Future<Either<MonsterFailure, List<MonsterEntity>>> getMonstersApiUseCase();
}
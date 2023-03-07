import 'package:dartz/dartz.dart';
import 'package:teste/features/domain/errors/errors.dart';

import '../models/monster_model.dart';

abstract class IMonsterDataSource {
  Future<Either<ServerError, List<MonsterModel>>> getMonstersDataSource();
}

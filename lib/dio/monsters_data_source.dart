import 'package:teste/dio/monster_model.dart';
abstract class ProductsDataSource {
  Future<Either<DataSourceError, List<MonsterModel>>> getProducts();
}

abstract class MonsterFailure implements Exception {}

class DataSourceError implements MonsterFailure {
  final String? message;

  DataSourceError({
    this.message,
  });
}
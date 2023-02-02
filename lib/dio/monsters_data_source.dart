import 'package:teste/dio/monster_model.dart';
import 'errors/errors.dart';

abstract class ProductsDataSource {
  Future<Either<DataSourceError, List<MonsterModel>>> getProducts();
}

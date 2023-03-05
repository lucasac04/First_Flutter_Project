import 'package:teste/dio/monster_model.dart';
import 'errors/errors.dart';

abstract class ProductsDataSource {
  Future<List<MonsterModel>> getProducts();
}

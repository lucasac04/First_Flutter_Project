import 'package:dartz/dartz.dart';
import 'package:teste/features/data/datasource/monsters_data_source.dart';
import 'package:teste/features/data/models/monster_model.dart';
import 'package:teste/features/domain/errors/errors.dart';
import 'package:dio/dio.dart';

class MonsterDataSourceImpl implements IMonsterDataSource {
  late final Dio dio;

  MonsterDataSourceImpl(this.dio);
  @override
  Future<Either<DataSourceError, List<MonsterModel>>> getMonsters() async {
    try{
        final response = await dio.get("https://lucasac04.github.io/api_dungeons_and_dragons_git_pages/monsters.json");

        if(response.statusCode == 200){
          final data = List.from(response.data as List);

          final monsters = data.map((e) => MonsterModel.fromJson(e)).toList();

          return Right(monsters);
        }
        throw DataSourceError(message: response.statusMessage);
    }on DataSourceError catch(e){
      return Left(e);
    }
  }
}
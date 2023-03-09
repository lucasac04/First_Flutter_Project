import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:teste/features/data/datasource/monsters_data_source_impl.dart';
import 'package:teste/features/data/models/monster_model.dart';

import '../../../mocks/monster_mock.dart';

class MockDio extends Mock implements Dio {}

class MockRequestOptions extends Mock implements RequestOptions {}

Future<void> main() async {
  late MonsterDataSourceImpl monsterDataSourceImpl;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    monsterDataSourceImpl = MonsterDataSourceImpl(mockDio);
  });
  group('getMonstersDataSource', () {
    test('Should return a List<MonsterModel>', () async {
      // Arrange
      final response = Response(
        statusCode: 200,
        data: [
          jsonDecode(monstersMock)
        ],
        requestOptions: MockRequestOptions(),
      );
      when(() => mockDio.get(any())).thenAnswer((_) async => response);
      final result = await monsterDataSourceImpl.getMonsters();

      expect(result.fold(id,id), isA<List<MonsterModel>>());
    });
  });
}

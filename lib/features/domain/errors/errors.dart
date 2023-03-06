abstract class MonsterFailure implements Exception {}

class DataSourceError implements MonsterFailure {
  final String? message;

  DataSourceError({
    this.message,
  });
}
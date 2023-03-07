abstract class MonsterFailure implements Exception {}

class ServerError implements MonsterFailure {
  final String? message;

  ServerError({
    this.message,
  });
}
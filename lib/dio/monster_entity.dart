import 'dart:ffi';

class MonsterEntity {
  late final int? id;
  late final String meta;
  late final String name;
  late final String challengeLevel;
  MonsterEntity({
    this.id,
    required meta,
    required name,
    required challengeLevel,
});
}

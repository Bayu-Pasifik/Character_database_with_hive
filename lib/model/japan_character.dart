import 'package:hive/hive.dart';

part 'japan_character.g.dart';

@HiveType(typeId: 1)
class JapanCharacter {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String gender;
  @HiveField(3)
  final String status;
  @HiveField(4)
  final int age;
  @HiveField(5)
  final String race;
  @HiveField(6)
  final String power;
  @HiveField(7)
  final String relationship;
  @HiveField(8)
  final String novelName;

  JapanCharacter(this.name, this.description, this.gender, this.status,
      this.age, this.race, this.power, this.relationship, this.novelName);
}

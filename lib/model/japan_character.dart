import 'package:hive/hive.dart';

part 'japan_character.g.dart';

@HiveType(typeId: 15)
class JapanCharacter {
  @HiveField(10)
  final String name;
  @HiveField(11)
  final String description;
  @HiveField(12)
  final String gender;
  @HiveField(13)
  final String status;
  @HiveField(14)
  final int age;
  @HiveField(15)
  final String race;
  @HiveField(16)
  final String power;
  @HiveField(17)
  final String relationship;
  @HiveField(18)
  final String novelName;

  JapanCharacter(this.name, this.description, this.gender, this.status,
      this.age, this.race, this.power, this.relationship, this.novelName);
}

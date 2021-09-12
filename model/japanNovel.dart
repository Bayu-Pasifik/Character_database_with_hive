import 'package:hive/hive.dart';

part 'japanNovel.g.dart';

@HiveType(typeId: 1)
class JapanNovel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String desc;
  @HiveField(2)
  final String genre;
  @HiveField(3)
  final String status;
  @HiveField(4)
  final int chapterNumber;

  JapanNovel(this.name, this.desc, this.genre, this.status, this.chapterNumber);
}

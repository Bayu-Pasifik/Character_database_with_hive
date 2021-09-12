// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../model/japanNovel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JapanNovelAdapter extends TypeAdapter<JapanNovel> {
  @override
  final int typeId = 1;

  @override
  JapanNovel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JapanNovel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, JapanNovel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.desc)
      ..writeByte(2)
      ..write(obj.genre)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.chapterNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JapanNovelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'japan_character.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JapanCharacterAdapter extends TypeAdapter<JapanCharacter> {
  @override
  final int typeId = 15;

  @override
  JapanCharacter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JapanCharacter(
      fields[10] as String,
      fields[11] as String,
      fields[12] as String,
      fields[13] as String,
      fields[14] as int,
      fields[15] as String,
      fields[16] as String,
      fields[17] as String,
      fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, JapanCharacter obj) {
    writer
      ..writeByte(9)
      ..writeByte(10)
      ..write(obj.name)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.gender)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.age)
      ..writeByte(15)
      ..write(obj.race)
      ..writeByte(16)
      ..write(obj.power)
      ..writeByte(17)
      ..write(obj.relationship)
      ..writeByte(18)
      ..write(obj.novelName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JapanCharacterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

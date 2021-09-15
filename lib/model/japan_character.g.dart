// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'japan_character.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JapanCharacterAdapter extends TypeAdapter<JapanCharacter> {
  @override
  final int typeId = 1;

  @override
  JapanCharacter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JapanCharacter(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as int,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
      fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, JapanCharacter obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.race)
      ..writeByte(6)
      ..write(obj.power)
      ..writeByte(7)
      ..write(obj.relationship)
      ..writeByte(8)
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

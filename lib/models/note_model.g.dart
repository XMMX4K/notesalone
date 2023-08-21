// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class notemodelAdapter extends TypeAdapter<notemodel> {
  @override
  final int typeId = 0;

  @override
  notemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return notemodel(
      title: fields[1] as String,
      Content: fields[2] as String,
      date: fields[3] as String,
      color: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, notemodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.Content)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is notemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

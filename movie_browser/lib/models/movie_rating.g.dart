// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_rating.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieRatingAdapter extends TypeAdapter<MovieRating> {
  @override
  final int typeId = 1;

  @override
  MovieRating read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieRating(
      source: fields[0] as String,
      value: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieRating obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.source)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieRatingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

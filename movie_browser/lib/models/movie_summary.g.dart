// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_summary.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieSummaryAdapter extends TypeAdapter<MovieSummary> {
  @override
  final int typeId = 2;

  @override
  MovieSummary read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieSummary(
      title: fields[0] as String,
      year: fields[1] as String,
      imdbID: fields[2] as String,
      type: fields[3] as String,
      posterUrl: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieSummary obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.year)
      ..writeByte(2)
      ..write(obj.imdbID)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.posterUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieSummaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchResultAdapter extends TypeAdapter<SearchResult> {
  @override
  final int typeId = 3;

  @override
  SearchResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchResult(
      title: fields[0] as String,
      page: fields[1] as int,
      totalResults: fields[2] as int,
      found: fields[3] as bool,
      movieSummaries: (fields[4] as List)?.cast<MovieSummary>(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchResult obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.page)
      ..writeByte(2)
      ..write(obj.totalResults)
      ..writeByte(3)
      ..write(obj.found)
      ..writeByte(4)
      ..write(obj.movieSummaries);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

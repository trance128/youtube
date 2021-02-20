import 'package:hive/hive.dart';

part 'movie_summary.g.dart';

@HiveType(typeId: 2)
class MovieSummary {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String year;
  @HiveField(2)
  final String imdbID;
  @HiveField(3)
  final String type;
  @HiveField(4)
  final String posterUrl;

  MovieSummary({
    this.title,
    this.year,
    this.imdbID,
    this.type,
    this.posterUrl,
  });
}

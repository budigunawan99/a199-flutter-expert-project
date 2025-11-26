import 'package:ditonton/data/models/episode_model.dart';
import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/season_model.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:equatable/equatable.dart';

class TvSeriesModel extends Equatable {
  TvSeriesModel({
    required this.backdropPath,
    required this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.name,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
    this.adult,
    this.mediaType,
    this.genres,
    this.lastEpisodeToAir,
    this.nextEpisodeToAir,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.seasons,
  });

  final String backdropPath;
  final String firstAirDate;
  final List<int> genreIds;
  final int id;
  final String name;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final double voteAverage;
  final int voteCount;

  final bool? adult;
  final String? mediaType;
  final List<GenreModel>? genres;
  final List<EpisodeModel>? lastEpisodeToAir;
  final String? nextEpisodeToAir;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<SeasonModel>? seasons;

  TvSeries toEntity() {
    return TvSeries(
      backdropPath: this.backdropPath,
      firstAirDate: this.firstAirDate,
      genreIds: this.genreIds,
      id: this.id,
      name: this.name,
      originCountry: this.originCountry,
      originalLanguage: this.originalLanguage,
      originalName: this.originalName,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
      adult: this.adult,
      mediaType: this.mediaType,
      genres: this.genres?.map((genre) => genre.toEntity()).toList(),
      lastEpisodeToAir:
          this.lastEpisodeToAir?.map((episode) => episode.toEntity()).toList(),
      nextEpisodeToAir: this.nextEpisodeToAir,
      numberOfEpisodes: this.numberOfEpisodes,
      numberOfSeasons: this.numberOfSeasons,
      seasons: this.seasons?.map((season) => season.toEntity()).toList(),
    );
  }

  @override
  List<Object?> get props => [
        backdropPath,
        firstAirDate,
        genreIds,
        id,
        name,
        originCountry,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        voteAverage,
        voteCount,
        adult,
        mediaType,
        genres,
        lastEpisodeToAir,
        nextEpisodeToAir,
        numberOfEpisodes,
        numberOfSeasons,
        seasons,
      ];
}

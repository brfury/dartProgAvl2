import 'package:avali2_prog2/media.dart';

class Movie extends Media{
  final String director;
  
  Movie({
    required super.title, 
    required super.duration,
    required super.type, 
    required this.director
    });

  @override
  String get name => director;
}
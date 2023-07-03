import 'package:avali2_prog2/media.dart';

class Music extends Media{
  final String artist;
  
  Music({
    required super.title, 
    required super.duration,
    required super.type, required this.artist
    });

  @override
  String get name => artist;
}
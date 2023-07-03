import 'package:avali2_prog2/media.dart';

class AudioBook extends Media{
  final String author;
  
  AudioBook({
    required super.title, 
    required super.duration,
    required super.type, 
    required this.author,
    });

  @override
  String get name => author;
}
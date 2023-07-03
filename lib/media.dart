 enum MediaType {
    movie,
    book,
    music,
  }
abstract class Media {
  final String title;
  final int duration;
  final MediaType type;

  Media({
    required this.title, 
    required this.duration, 
    required this.type, 
    }
      );

  String get name;
}
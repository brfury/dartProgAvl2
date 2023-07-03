import 'dart:io';
import 'dart:convert';

import 'package:avali2_prog2/movie.dart';
import 'package:avali2_prog2/music.dart';

import 'media.dart';
import 'audio_book.dart';

class DigitalLibrary {
  List<Media> mediaList = [];

  void addMedia(Media media) {
    mediaList.add(media);
  }

  void loadMedia(String json) {
    final jsonFile = File(json);
    final jsonAsString = jsonFile.readAsStringSync();
    final jsonData = jsonDecode(jsonAsString);

    for (var mediaData in jsonData) {
      final String mediaType = mediaData['type'];

      switch (mediaType) {
        case 'book':
          addMedia(
            AudioBook(
              title: mediaData['title'],
              duration: mediaData['duration'],
              type: MediaType.book,
              author: mediaData['name'],
            ),
          );
          break;
        case 'movie':
          addMedia(
            Movie(
              title: mediaData['title'],
              duration: mediaData['duration'],
              type: MediaType.movie,
              director: mediaData['name'],
            ),
          );
          break;
        case 'music':
          addMedia(
            Music(
              title: mediaData['title'],
              duration: mediaData['duration'],
              type: MediaType.music,
              artist: mediaData['name'],
            ),
          );
          break;
      }
    }
  }

  void tabPrint(Media tabp) {
    stdout.write(
      '${tabp.type.toString().split('.').last.padRight(8)}'
      '${tabp.title.padRight(30)}'
      '${tabp.name.padRight(25)}'
      '${tabp.duration}\n',
    );
  }

  void tabular() {
    print('${'TIPO'.padRight(8)}'
        '${'TÍTULO'.padRight(30)}'
        '${'NOME'.padRight(25)}'
        'DURAÇÃO(MIN)\n');
  }

  void listMedia([MediaType? type]) {
    if (type != null) {
      tabular();
      for (final peaceMedia in mediaList) {
        if (peaceMedia.type == type) {
          tabPrint(peaceMedia);
        }
      }
    } else {
      tabular();
      for (final media in mediaList) {
        tabPrint(media);
      }
    }
  }

  int totalMediaDuration([MediaType? name]) {
    int duration = 0;
    if (name == null) {
      for (final i in mediaList) {
        duration += i.duration;
      }
    } else {
      switch (name) {
        case MediaType.book:
          for (final i in mediaList) {
            if (i.type == name) {
              duration += i.duration;
            }
          }
          break;
        case MediaType.music:
          for (final i in mediaList) {
            if (i.type == name) {
              duration += i.duration;
            }
          }
          break;
        case MediaType.movie:
          for (final i in mediaList) {
            if (i.type == name) {
              duration += i.duration;
            }
          }
          break;
      }
    }
    return duration;
  }
}
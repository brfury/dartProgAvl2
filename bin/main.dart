//
// ESTE ARQUIVO NÃO DEVE SER ALTERADO
//

import 'package:avali2_prog2/digital_library.dart';
import 'package:avali2_prog2/media.dart';
void main() {
  const mediaFileName = 'data/media.json';

  final lib = DigitalLibrary();
  int totalDuration;

  lib.loadMedia(mediaFileName);

  print('#### FILMES\n');
  totalDuration = lib.totalMediaDuration(MediaType.movie);
  lib.listMedia(MediaType.movie);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### LIVROS\n');
  totalDuration = lib.totalMediaDuration(MediaType.book);
  lib.listMedia(MediaType.book);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### MÙSICAS\n');
  totalDuration = lib.totalMediaDuration(MediaType.music);
  lib.listMedia(MediaType.music);
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('#### TODAS AS MÍDIAS\n');
  totalDuration = lib.totalMediaDuration();
  lib.listMedia();
  print('DURAÇÂO TOTAL: $totalDuration min\n');

  print('AUTORES: Lucas Feitosa');
}


  
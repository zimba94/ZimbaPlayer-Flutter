import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zimba_player/src/models/audioplayer_model.dart';
import 'package:zimba_player/src/pages/music_player.dart';
import 'package:zimba_player/src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new AudioPlayerModel())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simba Records',
          theme: miTema,
          home: MusicPlayerPage()),
    );
  }
}

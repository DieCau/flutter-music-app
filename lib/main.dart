import 'package:flutter/material.dart';
import 'package:music_app/src/models/audioplayer_model.dart';
import 'package:provider/provider.dart';

import '/src/pages/music_player_page.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioPlayerModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, theme: miTema, home: const MusicPlayerPage()),
    );
  }
}

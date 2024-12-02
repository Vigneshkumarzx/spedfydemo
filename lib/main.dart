import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spodifyclone/main_screen.dart';
import 'package:spodifyclone/app_them.dart';
import 'package:spodifyclone/audio_providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioProvider()),
      ],
      child: MaterialApp(
        title: 'Spotify Clone',
        theme: AppTheme.darkTheme,
        home: const MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

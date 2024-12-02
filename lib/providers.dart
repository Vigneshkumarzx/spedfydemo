import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spodifyclone/audio_providers.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  AppProviders({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioProvider()),
      ],
      child: child,
    );
  }
}

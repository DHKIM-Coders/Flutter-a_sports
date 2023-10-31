import 'package:a_sports/settings/theme.dart';
import 'package:flutter/material.dart';

class LoungeScreen extends StatelessWidget {
  const LoungeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("LoungeScreen", style: textTheme().headlineLarge),
    );
  }
}
import 'package:a_sports/settings/theme.dart';
import 'package:flutter/material.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("RegionScreen", style: textTheme().headlineLarge),
    );
  }
}
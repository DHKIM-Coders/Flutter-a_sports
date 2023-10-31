// game_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:a_sports/models/game.dart';

class GameDetailScreen extends StatelessWidget {
  final GameInfo gameInfo;

  GameDetailScreen({required this.gameInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("게임 상세 정보"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: gameInfo.groundImage),
            SizedBox(height: 16),
            Text(
              gameInfo.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              gameInfo.gameDate,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              "게임 소개:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              gameInfo.intro,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

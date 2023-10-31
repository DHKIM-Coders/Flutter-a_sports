import 'package:flutter/material.dart';
import 'package:a_sports/models/game.dart';
import 'package:a_sports/screens/gamedetail_screen.dart'; // GameDetailScreen 파일을 import

class GameCard extends StatelessWidget {
  const GameCard({
    Key? key,
    required this.gameInfo,
  }) : super(key: key);
  final GameInfo gameInfo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameDetailScreen(gameInfo: gameInfo), // GameDetailScreen로 이동하고 gameInfo 전달
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: gameInfo.groundImage,
                  ),
                  isThreeLine: true,
                  title: Text(
                    gameInfo.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "${gameInfo.intro}\n${gameInfo.gameDate}",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  trailing: Text(
                    gameInfo.postId,
                    style: const TextStyle(color: Colors.black26, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


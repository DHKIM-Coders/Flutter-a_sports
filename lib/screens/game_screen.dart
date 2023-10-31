import 'package:a_sports/settings/theme.dart';
import 'package:flutter/material.dart';
import 'package:a_sports/components/game_card.dart';
import 'package:a_sports/models/game.dart';
import 'package:a_sports/screens/game_new.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Game"),
        backgroundColor: Colors.blue,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 검색 액션 수행 (아직 미구현)
            },
          ),
          IconButton(
            icon: Icon(Icons.filter),
            onPressed: () {
              // 필터 액션 수행 (아직 미구현)
            },
          ),
        ],
      ),

        body: ListView(
        children: List.generate(gameExamples.length,
                (index) => GameCard(gameInfo: gameExamples[index])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameNewScreen(),
            ),
          );
          // 새 게임 정보가 추가되었을 때 GameScreen을 다시 렌더링
          setState(() {});
        },
        tooltip: "새 경기 등록",
        child: Icon(Icons.add),
      ),
    );
  }
}
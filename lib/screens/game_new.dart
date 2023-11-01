import 'package:flutter/material.dart';
import 'package:a_sports/models/game.dart';

class GameNewScreen extends StatefulWidget {
  @override
  _GameNewScreenState createState() => _GameNewScreenState();
}

class _GameNewScreenState extends State<GameNewScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController gameDateController = TextEditingController();
  final TextEditingController introController = TextEditingController();
  final TextEditingController gameDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("새 게임 등록"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "게임 정보 입력",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "경기 상대",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: gameDateController,
              decoration: InputDecoration(
                labelText: "경기 일자",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: introController,
              decoration: InputDecoration(
                labelText: "경기 주최",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: gameDetailsController,
              decoration: InputDecoration(
                labelText: "경기 상세내용",
                border: OutlineInputBorder(),
              ),
              minLines: 5, // 최소 라인 수
              maxLines: 10, // 최대 라인 수
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                GameInfo gameInfo = GameInfo(
                  groundImage: AssetImage("assets/images/default_image.jpg"),
                  postId: UniqueKey().toString(),
                  title: titleController.text,
                  gameDate: gameDateController.text,
                  intro: introController.text,
                  gameDetails: gameDetailsController.text,
                );

                gameExamples.add(gameInfo);
                Navigator.pop(context);
              },
              child: Text("등록"),
            ),
          ],
        ),
      ),
    );
  }
}

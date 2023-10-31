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
                labelText: "게임 제목",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: gameDateController,
              decoration: InputDecoration(
                labelText: "게임 일자",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: introController,
              decoration: InputDecoration(
                labelText: "게임 소개",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // 게임 정보를 추가하고 저장하는 코드
                GameInfo gameInfo = GameInfo(
                  groundImage: AssetImage("assets/images/default_image.jpg"), // 이미지 경로 또는 사용자가 업로드한 이미지를 설정
                  postId: UniqueKey().toString(), // 고유한 ID 생성 (여기서는 UniqueKey를 사용)
                  title: titleController.text,
                  gameDate: gameDateController.text,
                  intro: introController.text,

                );

                gameExamples.add(gameInfo); // 정보를 gameExamples 리스트에 추가

                // GameNewScreen을 닫아서 GameScreen으로 돌아갑니다.
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
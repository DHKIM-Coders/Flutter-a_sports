import 'package:flutter/cupertino.dart';

class GameInfo {
  final dynamic groundImage;
  final String postId;
  final String title;
  final String gameDate;
  final String intro;
  final String gameDetails;

  GameInfo(
      {required this.groundImage,
      required this.postId,
      required this.title,
      required this.gameDate,
      required this.intro,
      required this.gameDetails});
}

//예시 게임정보
List<GameInfo> gameExamples = [
  GameInfo(
    groundImage: AssetImage("assets/images/p1.jpg"),
    postId: "kimdh",
    title: "KSFC vs KSD",
    gameDate: "23.10.17",
    intro: "제2회 금융위배 축구경기",
    gameDetails: "이 경기는 KSFC와 KSD 간의 치열한 축구 대결이었습니다. KSFC는 약간의 압박을 받았지만 결국 2-1로 승리를 거뒀습니다. 특히, 이 경기에서 활약한 주장 김동현은 훌륭한 패스와 드리블로 팀을 이끌었습니다.",
  ),
  GameInfo(
      groundImage: AssetImage("assets/images/p2.jpg"),
      postId: "leeky",
      title: "KSFC vs FSS",
      gameDate: "23.9.11",
      intro: "제5회 금감원배 축구경기",
      gameDetails: "제5회 금감원배 축구경기에서는 KSFC와 FSS가 맞붙었습니다. 양 팀은 치열한 경쟁을 벌였고 결국 1-1로 무승부로 종료되었습니다. 경기 후, 선수들은 친선 경기의 의미를 강조했습니다."
  ),
  GameInfo(
      groundImage: AssetImage("assets/images/p3.jpg"),
      postId: "ahngs",
      title: "KSFC vs KRX",
      gameDate: "23.5.12",
      intro: "제1회 거래소배 농구경기",
      gameDetails: "KSFC와 KRX 간의 농구 경기는 모든 선수에게 큰 도전이었습니다. 양 팀은 높은 스코어로 경쟁하며 최고의 경기를 펼쳤으며, KRX가 85-82로 승리하며 첫 번째 대회에서 우승했습니다."
  ),
];




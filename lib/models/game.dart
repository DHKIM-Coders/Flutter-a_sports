import 'package:flutter/cupertino.dart';

class GameInfo {
  final dynamic groundImage;
  final String postId;
  final String title;
  final String gameDate;
  final String intro;

  GameInfo(
      {required this.groundImage,
      required this.postId,
      required this.title,
      required this.gameDate,
      required this.intro});
}

//예시 게임정보

List<GameInfo> gameExamples = [
  GameInfo(
      groundImage: AssetImage("assets/images/p1.jpg"),
      postId: "kimdh",
      title: "KSFC vs KSD",
      gameDate: "23.10.17",
      intro: "제2회 금융위배 축구경기"),
  GameInfo(
      groundImage: AssetImage("assets/images/p2.jpg"),
      postId: "leeky",
      title: "KSFC vs FSS",
      gameDate: "23.9.11",
      intro: "제5회 금감원배 축구경기"),
  GameInfo(
      groundImage: AssetImage("assets/images/p3.jpg"),
      postId: "ahngs",
      title: "KSFC vs KRX",
      gameDate: "23.5.12",
      intro: "제1회 거래소배 농구경기"),
];

class Post {
  int postId;
  String title;
  String content;
  String genDate;

  Post({
    required this.postId,
    required this.title,
    required this.content,
    required this.genDate,
  });

  @override
  String toString() {
    return 'Post{postId: $postId, title: $title, content: $content, genDate: $genDate}';
  }
  // 우클릭 → Generate 선택하면 toStrig() 메소드 자동 생성 가능

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "postId": postId,
      "title": title,
      "content": content,
      "genDate": genDate,
    };
  }
}
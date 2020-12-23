class CustomCard {
  int id;
  String title;
  String content;

  CustomCard({this.id, this.title, this.content});
  CustomCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
      };

  @override
  String toString() {
    return 'id: $id ... title: $title ... content: $content';
  }
}

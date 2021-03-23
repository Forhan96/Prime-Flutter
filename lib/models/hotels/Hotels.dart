
class Hotels {
  int hotelsId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Hotels({this.hotelsId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Hotels.fromJson(Map<String, dynamic> json) {
    return Hotels(
      hotelsId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}

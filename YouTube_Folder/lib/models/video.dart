class Video{
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;
  final String viewCount;
  final String duration;
  final DateTime publishedAt;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
    required this.viewCount,
    this.duration = '0.00',
    required this.publishedAt
  });

  factory Video.fromJson(Map<String, dynamic> json){
    return Video(id: json['id'], title: json['snippet']['title'], thumbnailUrl: json['snippet']['thumbnails']['high']['url'], channelTitle: json['snippet']['channelTitle'], viewCount: json['statistics']['viewCount'], publishedAt: DateTime.parse(json['snippet']['publishedAt']) );
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:youtube_app/models/video.dart';

class VideoProvider extends ChangeNotifier{
  List<Video> _videos = [];
  String? _nextPageToken;
  bool _isLoading = false;

  List<Video> get videos => _videos;
  bool get isLoading => _isLoading;
  Future<void> fetchVideos() async{
    if(_isLoading){
      return ;
    } 
    _isLoading = true;
    notifyListeners();
    try{
      String url = 'https://www.googleapis.com/youtube/v3/videos?part=snippet,statistics&chart=mostPopular&maxResults=20&key=AIzaSyCVAGVMxVLbK6oui21RSIstVNDVSMBxL7c';

    if(_nextPageToken != null){
      url += '&pageToken=$_nextPageToken';
    }  

    final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);

      _nextPageToken = data['nextPageToken'];

      final List<Video> newVideos = (data['items'] as List).map((item) {
        return Video.fromJson(item);
      }).toList();
      _videos.addAll(newVideos);
    }catch(error){
      print("Error fetching videos: $error");
    }
  _isLoading = false;
  notifyListeners();
  }

  Future<void> refreshVideos() async{
    _nextPageToken = null;
    _videos = [];
    await fetchVideos();
  }
  
}

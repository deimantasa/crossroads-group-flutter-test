import 'dart:io';

class Api {
  static Map<String, String> kHeaderContentJson = {HttpHeaders.contentTypeHeader: "application/json"};

//  =============================
//  COMMITS
//  =============================
  //Hardcoding for now
  static String getCommits() {
    return "/repos/zeromaro/crossroads-group-flutter-test/commits";
  }
}

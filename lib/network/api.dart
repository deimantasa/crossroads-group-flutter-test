import 'dart:io';

class Api {
  static Map<String, String> kHeaderContentJson = {HttpHeaders.contentTypeHeader: "application/json"};

//  =============================
//  PROJECTS
//  =============================
  static String getProject(String projectId) {
    return "/projects/$projectId";
  }
}

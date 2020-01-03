import 'dart:io';

import 'package:flutter/material.dart';

class Env {
  static EnvData _env;

  static EnvData get data => _env;

  static void set(EnvData env) {
    _env = env;
  }

  static final EnvData dev = EnvData(
    apiBaseUrl: 'https://api.github.com',
  );

  static final EnvData prod = EnvData(
    apiBaseUrl: 'https://api.github.com',
  );
}

class EnvData {
  final String apiBaseUrl;

  EnvData({
    @required this.apiBaseUrl,
  });
}

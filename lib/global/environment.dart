import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'http://10.0.2.2:3000/api'
      : 'http://localhost:3000/api';
  static String socketUrl = Platform.isAndroid
      ? 'https://flutter-socketio-server-production-5a9a.up.railway.app'
      : 'https://flutter-socketio-server-production-5a9a.up.railway.app';
}

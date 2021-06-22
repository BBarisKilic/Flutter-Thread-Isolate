import 'package:flutter/material.dart';
import 'package:flutter_thread_isolate/multi_thread/multi_thread.dart';

void main() {
  runApp(ThreadIsolateApp());
}

class ThreadIsolateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiThread(),
    );
  }
}

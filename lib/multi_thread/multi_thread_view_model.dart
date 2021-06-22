import 'package:flutter/material.dart';
import 'package:flutter_thread_isolate/multi_thread/multi_thread.dart';

abstract class MultiThreadViewModel extends State<MultiThread> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

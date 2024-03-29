import 'package:flutter/material.dart';
import 'package:flutter_thread_isolate/multi_thread/multi_thread_view_model.dart';

class MultiThreadView extends MultiThreadViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeLoading();
        },
      ),
      appBar: AppBar(
        title: Text(count.toString()),
      ),
      body: Column(
        children: [
          Center(
              child: isLoading
                  ? const CircularProgressIndicator()
                  : const SizedBox())
        ],
      ),
    );
  }
}

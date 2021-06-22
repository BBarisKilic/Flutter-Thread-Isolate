import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_thread_isolate/multi_thread/multi_thread.dart';

abstract class MultiThreadViewModel extends State<MultiThread> {
  bool isLoading = true;
  Timer? timer;
  Future<void> changeLoading() async {
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      print(timer.tick);
    });
    // compute(calculateAll, null).then((value) {
    //   _changeNumber(value);
    //   timer?.cancel();
    // });

    // calculateAll(5);
    // calculateAll(5);
    // calculateAll(5);

    // await compute(calculateAll, null);
    // await compute(calculateAll, null);
    // await compute(calculateAll, null);

    await Future.wait([
      computeSample(),
      computeSample(),
      computeSample(),
    ]);

    // await computeSample();
    // await computeSample();
    // await computeSample();

    timer?.cancel();
    changeAll();
    await Future.delayed(Duration(seconds: 1));
    _changeLoading();
  }

  Future<void> computeSample() async {
    int x = await compute(calculateAll, null);
    print(x);
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void _changeNumber(int number) {
    setState(() {
      count = number;
    });
  }

  Future<void> changeAll() async {
    await Future.delayed(Duration(seconds: 1));
    print("object");
  }

  int count = 0;
}

int calculateAll(int? value) {
  int _count = 0;
  for (var i = 0; i < 1000000000; i++) {
    _count += i;
  }
  return _count;
}

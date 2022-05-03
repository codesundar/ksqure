import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/controllers/counter.dart';

class CounterDummyScreen extends StatelessWidget {
  CounterDummyScreen({Key? key}) : super(key: key);

  CounterController _counterCtrl = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        actions: [
          Obx(() => Text("${_counterCtrl.counter}")),
        ],
      ),
      body: Column(children: [
        Obx(() => Text("${_counterCtrl.counter}")),
        TextButton(
          onPressed: () {
            _counterCtrl.increaseValue();
          },
          child: Text("Add"),
        ),
        TextButton(
          onPressed: () {
            _counterCtrl.decreaseValue();
          },
          child: Text("Sub"),
        ),
        Obx(() => Text("${_counterCtrl.counter}")),
      ]),
    );
  }
}

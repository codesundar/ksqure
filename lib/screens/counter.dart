import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/controllers/counter.dart';
import 'package:project_name/screens/counter-dummy.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

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
        TextButton(
          onPressed: () {
            Get.to(CounterDummyScreen());
          },
          child: Text("Goto dummy Page"),
        ),
        Obx(() => Text("${_counterCtrl.counter}")),
      ]),
    );
  }
}

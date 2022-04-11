import 'package:counter_getx/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  final CountController controller = Get.find();
  CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
      ),
      body: Center(
        child: GetBuilder<CountController>(
          builder: (_) => Text(
            'clicks: ${controller.count.toInt()}',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

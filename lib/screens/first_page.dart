import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_demo/controllers/count_controller.dart';

class FirstPage extends StatelessWidget {
  //final controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Page 1"),
      ),
      body: Center(
          child: GetBuilder<CountController>(
        init: CountController(),
        builder: (controller) => Text(
          "Count ${controller.count}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      )
          //child: Obx(() => Text(
          // "Count ${controller.count}",
          // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //)),
          ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.find<CountController>().decrease();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Get.find<CountController>().increase();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

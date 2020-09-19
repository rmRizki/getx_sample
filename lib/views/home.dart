import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/counter_controller.dart';
import 'package:getx_sample/views/other.dart';

class Home extends StatelessWidget {
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('Clicks : ${c.count}'))),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Go to Other'),
                onPressed: () => Get.to(
                  Other(),
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('Change Theme'),
                onPressed: () => Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment),
    );
  }
}

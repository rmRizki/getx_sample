import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/counter_controller.dart';

class Other extends StatelessWidget {
  final CounterController c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Row(
          children: [
            Text('${c.count}'),
            RaisedButton(
              child: Text('Get Back'),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}

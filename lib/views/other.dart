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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${c.count}'),
            SizedBox(height: 20.0),
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

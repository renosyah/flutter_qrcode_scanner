import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/app/modules/result/controllers/result_controller.dart';
import 'package:flutter_qrcode_scanner/app/routes/app_pages.dart';

import 'package:get/get.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed(Routes.HOME);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Result'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                controller.text,
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Scan Again",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/app/modules/landing/controllers/landing_controller.dart';

import 'package:get/get.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

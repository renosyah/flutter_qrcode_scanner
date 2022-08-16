import 'package:flutter_qrcode_scanner/app/modules/landing/controllers/landing_controller.dart';
import 'package:get/get.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LandingController());
  }
}

import 'package:flutter_qrcode_scanner/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LandingController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void onClose() {}
}

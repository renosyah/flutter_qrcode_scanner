import 'package:flutter_qrcode_scanner/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  QRViewController? qrViewController;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onQRViewCreated(QRViewController c) {
    qrViewController = c;
    qrViewController!.scannedDataStream.listen((Barcode result) {
      if (result.code == null) return;
      if (result.code!.trim().isEmpty) return;
      displayResult(result.code);
    });
  }

  void displayResult(String? text) async {
    if (qrViewController == null) {
      return;
    }
    await qrViewController!.pauseCamera();
    Get.offAllNamed(Routes.RESULT, arguments: {"text": text});
  }

  @override
  void onClose() {
    if (qrViewController != null) {
      qrViewController!.dispose();
    }
  }
}

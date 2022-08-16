import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qrcode scanner'),
        centerTitle: true,
      ),
      body: QRView(
        key: GlobalKey(debugLabel: 'QR'),
        onQRViewCreated: controller.onQRViewCreated,
      ),
    );
  }
}

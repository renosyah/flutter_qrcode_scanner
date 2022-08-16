import 'package:get/get.dart';

class ResultController extends GetxController with StateMixin<dynamic> {
  late String text;

  @override
  void onInit() {
    text = Get.arguments["text"] ?? '';
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

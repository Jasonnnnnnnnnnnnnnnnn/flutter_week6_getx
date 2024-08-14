import 'package:get/get.dart';
import 'package:test_getx/Home_controller.dart';



class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
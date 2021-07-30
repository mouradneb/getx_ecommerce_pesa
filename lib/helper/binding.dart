import 'package:get/get.dart';
import 'package:getx_ecommerce_pesa/core/view_model/auth_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }
}

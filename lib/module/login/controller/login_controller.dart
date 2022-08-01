import 'package:contoh_getx_baik/module/main_navigation/view/main_navigation_view.dart';
import 'package:contoh_getx_baik/service/auth_service.dart';
import 'package:getx_baik/shared/get/get.dart';
import 'package:getx_baik/shared/get/getx_controller.dart';
import '../../../shared/util/input/input.dart';
import '../view/login_view.dart';

class LoginController extends GetxController {
  LoginView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  doLogin() async {
    var email = Input.get("email");
    var password = Input.get("password");

    await AuthService().login(
      email: email,
      password: password,
    );

    Get.offAll(MainNavigationView());
  }
}

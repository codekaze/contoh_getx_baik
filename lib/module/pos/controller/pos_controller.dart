import 'package:contoh_getx_baik/service/cart_service.dart';
import 'package:getx_baik/shared/get/getx_controller.dart';
import '../view/pos_view.dart';

class PosController extends GetxController {
  PosView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  double get total {
    double t = 0;
    for (var i = 0; i < CartService.carts.length; i++) {
      var item = CartService.carts[i];
      t += item["qty"] * item["price"];
    }

    return t;
  }
}

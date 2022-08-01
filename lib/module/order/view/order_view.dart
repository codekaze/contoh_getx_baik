import 'package:flutter/material.dart';
import '../controller/order_controller.dart';

import 'package:getx_baik/shared/get/get_builder.dart';

class OrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      init: OrderController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Order"),
          ),
        );
      },
    );
  }
}

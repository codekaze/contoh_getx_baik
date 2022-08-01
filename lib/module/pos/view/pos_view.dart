import 'package:flutter/material.dart';
import '../controller/pos_controller.dart';
import 'package:getx_baik/shared/get/get_builder.dart';

class PosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosController>(
      init: PosController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Pos"),
          ),
        );
      },
    );
  }
}

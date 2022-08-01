import 'package:flutter/material.dart';
import 'package:getx_baik/shared/get/get_builder.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Dashboard"),
          ),
        );
      },
    );
  }
}

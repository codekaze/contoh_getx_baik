import 'package:contoh_getx_baik/module/main_navigation/view/main_navigation_view.dart';
import 'package:contoh_getx_baik/shared/widget/button/button.dart';
import 'package:contoh_getx_baik/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:getx_baik/shared/get/get.dart';
import '../controller/login_controller.dart';

import 'package:getx_baik/shared/get/get_builder.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [],
            ),
          ),
        );
      },
    );
  }
}

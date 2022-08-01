import 'package:flutter/material.dart';
import 'package:getx_baik/shared/get/get.dart';
import '../../../shared/widget/button/button.dart';
import '../../../shared/widget/textfield/textfield.dart';
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Column(
                    children: [
                      ExTextField(
                        id: "email",
                        label: "Email",
                        value: "user@demo.com",
                      ),
                      ExTextField(
                        id: "password",
                        label: "Password",
                        value: "123456",
                        textFieldType: TextFieldType.password,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ExButton(
                        label: "Login",
                        onPressed: () => controller.doLogin(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

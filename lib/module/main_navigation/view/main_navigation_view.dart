import 'package:contoh_getx_baik/module/order/view/order_view.dart';
import 'package:contoh_getx_baik/module/pos/view/pos_view.dart';
import 'package:contoh_getx_baik/module/profile/view/profile_view.dart';
import 'package:contoh_getx_baik/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:getx_baik/shared/get/get.dart';
import '../controller/main_navigation_controller.dart';

import 'package:getx_baik/shared/get/get_builder.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("MainNavigation"),
          ),
          body: Container(
            padding: EdgeInsets.all(0.0),
            child: Column(
              children: [
                Wrap(
                  children: [
                    InkWell(
                      onTap: () => Get.to(PosView()),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: Get.width / 4,
                        child: Column(
                          children: [
                            Icon(Icons.point_of_sale),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "POS",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(OrderView()),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: Get.width / 4,
                        child: Column(
                          children: [
                            Icon(Icons.list),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Order",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(ProfileView()),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: Get.width / 4,
                        child: Column(
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:contoh_getx_baik/module/login/view/login_view.dart';
import 'package:contoh_getx_baik/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:getx_baik/shared/get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../shared/widget/button/button.dart';
import '../controller/profile_controller.dart';

import 'package:getx_baik/shared/get/get_builder.dart';

import '../widget/simple_profile_item.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            actionsIconTheme: IconThemeData(
              color: Colors.grey[700],
            ),
            iconTheme: IconThemeData(
              color: Colors.grey[700],
            ),
            title: Text(
              "Profile",
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/gjf4PTX/photo-1490578474895-699cd4e2cf59-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        ),
                        radius: 34.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Ryan Doe",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "ryan@demo.com",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width - 100,
                    margin: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.bookmark,
                                color: Color(0xffFF7465),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "My Wishlist",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "11",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.thumbUp,
                                color: Color(0xffFF7465),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "My Liked Post",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "25",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.ticketPercent,
                                color: Color(0xffFF7465),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "My Coupon",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "14",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 120.0,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 120.0,
                          width: Get.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/yqKwc9V/geometric-grey-background-1055-3147.webp",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Color(0xffFF7465).withOpacity(0.6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$340.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              ExButton(
                                label: "Topup",
                                width: 110.0,
                                size: md,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SimpleProfileItem(
                          icon: Icons.person,
                          label: "My Account",
                        ),
                        SimpleProfileItem(
                          icon: Icons.place,
                          label: "My Addresses",
                        ),
                        SimpleProfileItem(
                          icon: MdiIcons.tune,
                          label: "Settings",
                        ),
                        SimpleProfileItem(
                          icon: MdiIcons.logout,
                          label: "Logout",
                          onTap: () {
                            Get.offAll(LoginView());
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

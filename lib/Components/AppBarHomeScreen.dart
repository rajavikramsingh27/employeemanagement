import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Views/Notifications.dart';
import '../Views/Profile.dart';


class AppBarStyleHome extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;

  AppBarStyleHome({
    Key? key,
    this.onTap,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: heightAppBar,
      elevation: 0,
      backgroundColor: ColorStyle.primaryWhite,
      leadingWidth: 0,
      leading: Container(),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(ImageStyle.sun, height: 24, width: 24),
              SizedBox(
                width: 10,
              ),
              Text(
                'Mon, 11 april',
                style: TextStyles.textStyles_14_normal
                    .apply(color: ColorStyle.secondryBlack),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Good morning, John',
            style: TextStyles.textStyles_20_bold
                .apply(color: ColorStyle.secondryBlack),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Image.asset(
                ImageStyle.notificatioBlackBorder,
                height: 36,
                width: 36,
              ),
              onPressed: () {
                Get.to(Notifications());
              },
            ),
            IconButton(
              icon: Image.asset(
                ImageStyle.UserBlackBorder,
                height: 36,
                width: 36,
              ),
              onPressed: () {
                Get.to(Profile());
              },
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}

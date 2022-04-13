import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

class AppBarStyleAuth extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final String? title;

  const AppBarStyleAuth({Key? key, this.onTap, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            title!,
            style: TextStyles.textStyles_20_bold.apply(
              color: ColorStyle.secondryBlack
            ),
          ),
          leading: BackButton(
            color: Colors.black,
          )),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}

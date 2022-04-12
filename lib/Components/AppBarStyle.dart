import 'package:flutter/material.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final String? title;

  const AppBarStyle({Key? key, this.onTap, this.title = ""}) : super(key: key);

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
          ),
          leading: BackButton(
            color: Colors.black,
          )),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}

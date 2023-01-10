import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';

class CustomAppBar2 extends StatelessWidget with PreferredSizeWidget {
  final IconData icon;
  final String screenTitle;
  final Function func;
  CustomAppBar2(this.icon, this.func, this.screenTitle);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.secondaryColor,
      elevation: 0.0,
      title: Text(screenTitle),
      leading: IconButton(
        icon: Icon(icon),
        iconSize: 28.0,
        onPressed: func,
      ),
      // actions: [
      //   IconButton(
      //     icon: const Icon(Icons.notifications_none),
      //     iconSize: 28.0,
      //     onPressed: () {},
      //   ),
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

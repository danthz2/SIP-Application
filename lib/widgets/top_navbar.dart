import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';

class MyTopNavbar extends StatelessWidget implements PreferredSizeWidget {
  final String iconImg;
  final String titleNav;
  final String subtitleNav;
  final int bgColor;

  MyTopNavbar(
      {this.iconImg,
      this.titleNav,
      this.subtitleNav,
      this.bgColor = 0xffFBD277});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      leading: (iconImg != null) ? Image.asset(iconImg) : null,
      title: (subtitleNav != null)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleNav,
                  style: titleSIP.copyWith(color: greySIP),
                ),
                Text(
                  subtitleNav,
                  style: subtitleSIP.copyWith(
                      fontWeight: FontWeight.w300, color: greySIP),
                ),
              ],
            )
          : Text(
              titleNav,
              style: titleSIP.copyWith(color: greySIP),
            ),
      backgroundColor: Color(bgColor),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: bluePastel,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}

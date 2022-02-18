import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';

class MyTopNavbar extends StatelessWidget implements PreferredSizeWidget {
  final String iconImg;
  final String titleNav;
  final String subtitleNav;

  MyTopNavbar({this.iconImg = null, this.titleNav, this.subtitleNav});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      leading: Image.asset("assets/images/icon_receh.png"),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "SIP",
            style: titleSIP.copyWith(color: greySIP),
          ),
          Text(
            "Be Smart",
            style: subtitleSIP.copyWith(
                fontWeight: FontWeight.w300, color: greySIP),
          ),
        ],
      ),
      backgroundColor: yellowSIP,
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

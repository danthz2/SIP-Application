import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        ),
        body: Center(child: Text("Beranda")));
  }
}

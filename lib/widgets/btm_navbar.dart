import 'package:flutter/material.dart';
import 'package:sip_app/pages/akun.dart';
import 'package:sip_app/pages/beranda.dart';
import 'package:sip_app/theme.dart';
import 'dart:math' as math;

class MyBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            width: 165,
            height: 70,
            decoration: BoxDecoration(
                color: yellowSIP, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Beranda();
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.home,
                    size: 35,
                  ),
                ),
                Text("Beranda")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 30),
            alignment: Alignment.centerRight,
            width: 165,
            height: 70,
            decoration: BoxDecoration(
                color: yellowSIP, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Akun(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 35,
                  ),
                ),
                Text("Akun")
              ],
            ),
          ),
        ]),
        Transform.rotate(
          angle: math.pi / 4,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff7f7f7)),
          ),
        ),
        Transform.rotate(
          angle: math.pi / 4,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: redPastel),
            child: Transform.rotate(
                angle: -math.pi / 4,
                child: Icon(Icons.laptop_chromebook_rounded)),
          ),
        )
      ],
    );
  }
}

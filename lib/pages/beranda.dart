import 'package:flutter/material.dart';
import 'package:sip_app/pages/pilih_matkul.dart';
import 'package:sip_app/theme.dart';
import 'dart:math' as math;

import 'package:sip_app/widgets/btm_navbar.dart';
import 'package:sip_app/widgets/top_navbar.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTopNavbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          header(),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PilihMatkul();
              }));
            },
            child: chooseMenu(
                "assets/images/button_belajar.png", Icons.school, "Belajar"),
          ),
          chooseMenu("assets/images/button_belanja.png", Icons.shopping_cart,
              "Belanja"),
          SizedBox(
            height: 20,
          ),
          MyBottomNavbar(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget chooseMenu(String btnImg, IconData btnIcon, String btnText) {
    return Column(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(btnImg),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                btnIcon,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                btnText,
                style: titleSIP.copyWith(color: Colors.white, fontSize: 26),
              )
            ],
          )
        ],
      )
    ]);
  }

  Widget header() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
            clipper: MyCustomClipper(),
            child: Image.asset("assets/images/bg_beranda1.png")),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: whiteSIP,
                ),
                SizedBox(
                  width: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/progress_chart.png"),
                    Column(
                      children: [
                        Text(
                          "Belajar",
                          style: titleSIP.copyWith(color: whiteSIP),
                        ),
                        Text("75\%",
                            style: titleSIP.copyWith(
                                color: whiteSIP, fontSize: 30)),
                        Text("Selesai",
                            style: titleSIP.copyWith(color: whiteSIP)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: whiteSIP,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 130,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: whiteSIP, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book,
                      color: whiteSIP,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Belajar",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ))
          ],
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(size.width, size.height * 0.5037313, size.width,
        size.height * 0.6716418);
    path.cubicTo(
        size.width * 0.7466667,
        size.height * 1.0447761,
        size.width * 0.2666667,
        size.height * 1.0447761,
        0,
        size.height * 0.6716418);
    path.quadraticBezierTo(0, size.height * 0.5037313, 0, 0);
    path.lineTo(size.width, 0);
    path.close();
    ;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

Widget cobaWidget() {
  return Text('hellow wolrd');
}

import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';
import 'package:sip_app/widgets/btm_navbar.dart';
import 'package:sip_app/widgets/top_navbar.dart';
import 'dart:math' as math;

class Belanja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTopNavbar(
        titleNav: "Point Kamu",
        subtitleNav: "200.000",
        iconImg: "assets/images/icon_receh.png",
        bgColor: 0xffffff,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => rewardOffer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Promo Pulsa Hari Ini !"),
                  Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellowSIP),
                    child: Text("Lihat"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => voucher(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tukar Pointmu ke Pulsa"),
                  Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellowSIP),
                    child: Text("Lihat"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => voucher(),
              ),
            ),
            MyBottomNavbar(),
          ],
        ),
      ),
    );
  }

  Widget voucher() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 135,
      height: 135,
      child: Material(
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/voucher.png"),
            SizedBox(
              height: 10,
            ),
            Text("Pulsa"),
            Text("Rp 15.000 = 1500 Point")
          ],
        ),
      ),
    );
  }

  Widget rewardOffer() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 30,
            right: 20,
            left: 10,
          ),
          alignment: Alignment.center,
          width: 200,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: yellowSIP),
          child: Text('Dapatkan 1000 Point Gratis!'),
        ),
        Positioned(
            top: 15,
            right: 10,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xff1E9DBE),
              foregroundColor: Colors.black,
              child: Transform.rotate(
                  angle: -math.pi / 5,
                  child: Text(
                    "HOT",
                    style: TextStyle(fontSize: 10),
                  )),
            ))
      ],
    );
  }
}

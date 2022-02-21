import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';
import 'package:sip_app/widgets/btm_navbar.dart';
import 'package:sip_app/widgets/top_navbar.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTopNavbar(
        titleNav: "SIP",
        subtitleNav: "Be Smart",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Profil saya",
              style: titleSIP,
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/user_img.png"),
            SizedBox(
              height: 15,
            ),
            Text(
              "Raman Saepul",
              style: titleSIP.copyWith(fontSize: 24),
            ),
            Text("08589465223"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              color: yellowSIP,
              child: Text("Profil"),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Status\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: "Mahasiswa",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
                ),
              )
            ]),
            Divider(
              color: yellowSIP,
              height: 10,
              thickness: 1,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Tanggal Lahir\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: "29 - 02 - 1996",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
                ),
              )
            ]),
            Divider(
              color: yellowSIP,
              height: 10,
              thickness: 1,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Domisili\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: "Jakarta Timur",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
                ),
              )
            ]),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              color: yellowSIP,
              child: Text("Aplikasi Pengaturan"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pengaturan"),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
            ),
            Divider(
              color: yellowSIP,
              height: 10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Versi Aplikasi"),
                  Text("0.1.1"),
                ],
              ),
            ),
            Divider(
              color: yellowSIP,
              height: 10,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Logout",
                textAlign: TextAlign.start,
              ),
            ),
            MyBottomNavbar(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

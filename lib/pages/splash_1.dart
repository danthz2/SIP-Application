import 'package:flutter/material.dart';
import 'package:sip_app/pages/splash_2.dart';
import 'package:sip_app/theme.dart';

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Splash2();
              },
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Selamat Datang di Aplikasi",
                style: titleSIP,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Smart",
                    style: titleSIP.copyWith(color: yellowSIP),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("In", style: titleSIP),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Pandemic", style: titleSIP.copyWith(color: redSIP)),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Image.asset(
                "assets/images/splash_img1.png",
                width: 252,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Aktifkan akun SIP mu sekarang dan\nnikmati fitur-fitur menariknya",
                style: subtitleSIP,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: greySIP,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.circle,
                    color: greySIP,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.circle,
                    color: greySIP,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                  width: 285,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: yellowSIP)),
                  child: Center(
                    child: Text(
                      "Lewati",
                      style: titleSIP,
                    ),
                  )),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

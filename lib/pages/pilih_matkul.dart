import 'package:flutter/material.dart';
import 'package:sip_app/theme.dart';
import 'package:sip_app/widgets/btm_navbar.dart';
import 'package:sip_app/widgets/top_navbar.dart';
import 'beranda.dart';

class PilihMatkul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTopNavbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35, left: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 190,
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: greenPastel))),
                  ),
                ),
                Container(
                    width: 95,
                    height: 20,
                    child: ElevatedButton(
                        child: Text(
                          "Materi Pilihan",
                          style: subtitleSIP.copyWith(fontSize: 10),
                        ),
                        onPressed: () {})),
              ],
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Column(
            children: [
              ListMatkul("MATEMATIKA", purplePastel),
              ListMatkul("TEKNIK INFORMATIKA", greenPastel),
              ListMatkul("BAHASA & SASTRA", bluePastel),
              ListMatkul("EKONOMI", redPastel),
              ListMatkul("PSIKOLOGI", moccaPastel),
              ListMatkul("MANAJEMEN", tealPastel),
              ListMatkul("KODEKTERAN", purplePastel),
            ],
          ),
          MyBottomNavbar(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget ListMatkul(String matkul, Color mkColor) {
    return Container(
      width: 325,
      height: 50,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: mkColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(matkul), Icon(Icons.arrow_drop_down)],
      ),
    );
  }
}

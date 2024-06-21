import 'package:flutter/material.dart';
import 'package:riza_property/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Serprenta extends StatefulWidget {
  const Serprenta({super.key});

  @override
  State<Serprenta> createState() => _SerprentaState();
}

class _SerprentaState extends State<Serprenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 244, 102, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  'images/Serprenta.png', // Ganti dengan path gambar rumah Cenarius
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Color.fromRGBO(242, 244, 102, 1),
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10,
            ),
            child: Row(
              children: [
                Text("type"),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Serprenta",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(242, 244, 102, 1),
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10,
            ),
            child: Column(
              children: [
                Text(
                    "Rumah tipe menengah yang tentu saja interiornya tidak semewah tipe Sylvanas. namun tetap ada dua kamar tidur, dua kamar mandi, satu dapur, dan satu garasi.")
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/ruang keluarga seprenta 1.png",
                      height: 128,
                      width: 190,
                    ),
                    Image.asset(
                      "images/kamar mandi serprenta 1.png",
                      height: 128,
                      width: 182,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/kamar tidur serprenta 1.png",
                      height: 128,
                      width: 190,
                    ),
                    Image.asset(
                      "images/garasi serprenta 1.png",
                      height: 128,
                      width: 182,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(242, 244, 102, 1),
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10,
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(
                        "https://wa.me/083844494852?text=Halo,%20saya%20ingin%20bertanya%20tentang%20properti%20yang%20anda%20jual.");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(243, 36, 36, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Column(
                    children: [
                      Text(
                        "BELI SEKARANG",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        "Rp. 79.999.999",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

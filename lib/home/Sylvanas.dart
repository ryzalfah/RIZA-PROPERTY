import 'package:flutter/material.dart';
import 'package:riza_property/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Sylvanas extends StatefulWidget {
  const Sylvanas({super.key});

  @override
  State<Sylvanas> createState() => _SylvanasState();
}

class _SylvanasState extends State<Sylvanas> {
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
                  'images/Sylvanas.png', // Ganti dengan path gambar rumah Cenarius
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
                  "Sylvanas",
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
                    "Rumah ini memiliki fasilitas paling mewah di antara tipe-tipe yang lain. Rumah ini sudah full interior dan memiliki tiga kamar tidur, tiga kamar mandi, satu dapur, dan satu garasi.")
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/interior sylvanas 1.png",
                      height: 128,
                      width: 190,
                    ),
                    Image.asset(
                      "images/kamar mandi sylvanas 1.png",
                      height: 128,
                      width: 182,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/kamar sylvanas 1.png",
                      height: 128,
                      width: 190,
                    ),
                    Image.asset(
                      "images/garasi sylvanas 1.png",
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
                        "Rp. 99.999.999",
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

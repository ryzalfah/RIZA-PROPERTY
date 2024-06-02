import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:riza_property/login/login.dart';
import 'package:riza_property/ui/info1.dart';
import 'package:riza_property/ui/info2.dart';

class onboard extends StatelessWidget {
  const onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (_, i) {
          return Padding(
            padding: EdgeInsets.fromLTRB(40, 120, 40, 40),
            child: Column(
              children: [
                Image.asset(
                  "images/onboard1.png",
                  height: 215.73,
                  width: 211.34,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Nikmati layanan pemesanan yang nyaman",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.blue,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const login(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 35),
                              child: Text(
                                "Lewati",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 48, 83, 1),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const info(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 35),
                                child: Text(
                                  "Lanjut",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ))
                      ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

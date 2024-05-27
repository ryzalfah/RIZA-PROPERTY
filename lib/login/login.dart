import 'package:flutter/material.dart';
import 'package:riza_property/ui/info1.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
                  "images/onboard.png",
                  height: 110,
                  width: 225,
                  alignment: Alignment.center,
                ),
                Text(
                  "Welcome to Riza Property",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Ingin memiliki property segera Masuk!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
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
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 35),
                                child: Text(
                                  "Masuk",
                                  textAlign: TextAlign.center,
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

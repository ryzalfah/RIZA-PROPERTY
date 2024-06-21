import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riza_property/home/text_box.dart';

class Profilpage extends StatefulWidget {
  const Profilpage({super.key});

  @override
  State<Profilpage> createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  final currenstUser = FirebaseAuth.instance.currentUser!;
  Future<void> editField(String field) async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Icon(
            Icons.person,
            size: 72,
          ),
          const SizedBox(height: 10),
          Text(
            currenstUser.email!,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Informai Saya",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          MyTextBox(
            text: "Nama",
            sectionName: "Username",
            onPressed: () => editField("Username"),
          ),
          MyTextBox(
            text: "NIK",
            sectionName: "NIK",
            onPressed: () => editField("NIK"),
          ),
          MyTextBox(
            text: "08...",
            sectionName: "No. hp",
            onPressed: () => editField("NO_HP"),
          ),
        ],
      ),
    );
  }
}

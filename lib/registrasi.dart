import 'package:flutter/material.dart';
import 'package:ganti_username/edit.dart';
import 'package:ganti_username/profil.dart';

class Registrasi extends StatefulWidget {
  Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPass = new TextEditingController();

  Widget txtInput(String username, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: username,
      ),
    );
  }

  Widget btnRegister(String text) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profil(nama: ctrUsername.text)));
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: txtInput("Username", ctrUsername)),
              txtInput("Password", ctrPass),
              Container(
                  margin: EdgeInsets.only(top: 10), child: btnRegister("Next"))
            ],
          ),
        ),
      ),
    );
  }
}

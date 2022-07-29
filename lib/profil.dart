import 'package:flutter/material.dart';
import 'package:ganti_username/edit.dart';

class Profil extends StatefulWidget {
  String nama;

  Profil({Key? key, required this.nama}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  Widget btnRegister(String text) {
    return ElevatedButton(
        onPressed: () async {
          final Eddited = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Edit()));

          setState(() {
            widget.nama = Eddited;
          });
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Profil"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:
                    Text("Halo " + widget.nama, style: TextStyle(fontSize: 20)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10), child: btnRegister("Edit"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ganti_username/profil.dart';

class Edit extends StatefulWidget {
  const Edit({
    Key? key,
  }) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController editUsername = TextEditingController();

  Widget editText(TextEditingController controller, String text) {
    return TextField(
      controller: controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: text),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Edit Page"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: editText(editUsername, "Edit Your Username"),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () async {
            //       final newValue = await Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => Profil()));

            //       setState(() {
            //         widget.nama = newValue[0];
            //       });
            //     },
            //     child: Text("Edit Profile"))
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      List<String> string = [];
                      string.add(editUsername.text);

                      Navigator.of(context).pop(editUsername.text);
                    });
                  },
                  child: Text("Done")),
            ),
          ],
        ),
      ),
    );
  }
}

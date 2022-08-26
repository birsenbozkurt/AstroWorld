import 'package:astro_world/natal.dart';
import 'package:astro_world/transit_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:astro_world/renkler.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Kisiler extends StatefulWidget {
  const Kisiler({Key? key}) : super(key: key);

  @override
  State<Kisiler> createState() => _KisilerState();
}

class _KisilerState extends State<Kisiler> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Contacts",
            style: TextStyle(fontFamily: "Kalam", fontSize: 22),
          ),
          backgroundColor: anaRenk,
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: [
            AnimSearchBar(
                width: 400,
                textController: textController,
                onSuffixTap: () {
                  setState(() {});
                }),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/birsen.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Birsen",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Sun: Taurus  Moon: Scopio  Asc: Gemini",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Natal()));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/hilal.jpeg"),
              ),
              tileColor: Colors.grey,
              title: Text(
                "Hilal Sari",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/kubra.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Kübra Özkan",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/erdem.jpeg"),
              ),
              tileColor: Colors.grey,
              title: Text(
                "Erdem Hocaoğlu",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/ece.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Ece Kolay",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/alper.jpeg"),
              ),
              tileColor: Colors.grey,
              title: Text(
                "Alper Özdin",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/busra.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Büşra Akbey",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/seyit.jpeg"),
              ),
              tileColor: Colors.grey,
              title: Text(
                "Seyit Kurt",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/dilan.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Dilan Yuşan",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/acelya.jpeg"),
              ),
              tileColor: Colors.grey,
              title: Text(
                "Açelya",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("resimler/aysima.jpeg"),
              ),
              tileColor: Colors.indigo[900],
              title: Text(
                "Aysima",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        )));
  }
}

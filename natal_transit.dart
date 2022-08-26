import 'package:astro_world/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:astro_world/renkler.dart';

class natal_transit extends StatefulWidget {
  const natal_transit({Key? key}) : super(key: key);

  @override
  State<natal_transit> createState() => _natal_transitState();
}

class _natal_transitState extends State<natal_transit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natal and Transit Combined",
          style: TextStyle(fontFamily: "Kalam", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "resimler/natal_transit.jpeg",
              height: 500,
            ),
          ),
          SizedBox(
            width: 300,
            height: 45,
            child: RaisedButton(
              child: Text(
                "Return to Homepage",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
              },
              color: Colors.indigo[900],
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          )
        ]),
      ),
    );
  }
}

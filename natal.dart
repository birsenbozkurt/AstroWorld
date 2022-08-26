import 'package:astro_world/natal_transit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:astro_world/renkler.dart';

class Natal extends StatefulWidget {
  const Natal({Key? key}) : super(key: key);

  @override
  State<Natal> createState() => _NatalState();
}

class _NatalState extends State<Natal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natal Chart",
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
              "resimler/natal.jpeg",
              height: 500,
            ),
          ),
          SizedBox(
            width: 300,
            height: 45,
            child: RaisedButton(
              child: Text(
                "Natal and Transit Combined",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => natal_transit()));
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

import 'package:astro_world/natal_transit.dart';
import 'package:flutter/material.dart';
import 'package:astro_world/renkler.dart';

class transitChart extends StatefulWidget {
  const transitChart({Key? key}) : super(key: key);

  @override
  State<transitChart> createState() => _transitChartState();
}

class _transitChartState extends State<transitChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Transit Chart",
          style: TextStyle(fontFamily: "Kalam", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Anlık Gökyüzü Transit Haritasıdır. Astro.comdan alınmıştır.",
                style: TextStyle(fontSize: 18, color: yaziRenk2, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Image.asset(
                "resimler/transitChart.jpeg",
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
          ],
        ),
      ),
    );
  }
}

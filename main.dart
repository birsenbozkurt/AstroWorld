import 'package:astro_world/renkler.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
//import 'package:flutter-gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // localizationDelegates: const [
      //   AppLocalizations.delegate,

      // ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Astro World",
            style: TextStyle(fontFamily: "Kalam", fontSize: 22),
          ),
          backgroundColor: anaRenk,
          centerTitle: true, //başlığı ortaladım
          // automaticallyImplyLeading: false,
          // actions: [
          //   IconButton(onPressed: (){}, icon: const Icon(Icons.search))
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Text(
                "Happy Spiritual Days ",
                style: TextStyle(fontSize: 28, color: anaRenk, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 24),
                child: Image.asset(
                  "resimler/mainBirthChart.png",
                  width: 200,
                  height: 180,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      print("Birth Chart");
                    },
                    child: Text(
                      "Birth Chart",
                      // style: TextStyle(color: yaziRenk1),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Birth Chart");
                    },
                    child: Text(
                      "Synastry Chart",
                      // style: TextStyle(color: yaziRenk1),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Birth Chart");
                    },
                    child: Text(
                      "Compozit Chart",
                      // style: TextStyle(color: yaziRenk1),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: Text(
                        " Choose Fixed Star !",
                        style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              print("Birth Chart");
                            },
                            child: Text(
                              "Juno",
                              // style: TextStyle(color: yaziRenk1),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: anaRenk,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("Birth Chart");
                            },
                            child: Text(
                              "Ceres",
                              // style: TextStyle(color: yaziRenk1),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: anaRenk,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("Birth Chart");
                            },
                            child: Text(
                              "Lilith",
                              // style: TextStyle(color: yaziRenk1),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: anaRenk,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("Birth Chart");
                            },
                            child: Text(
                              "Pallas",
                              // style: TextStyle(color: yaziRenk1),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: anaRenk,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("Birth Chart");
                            },
                            child: Text(
                              "Vesta",
                              // style: TextStyle(color: yaziRenk1),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: anaRenk,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Search Contact !",
                      style: TextStyle(fontSize: 18, color: yaziRenk2, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: AnimSearchBar(
                        width: 190,
                        textController: textController,
                        onSuffixTap: () {
                          setState(() {});
                        }),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          print("Birth Chart");
                        },
                        child: Text(
                          "Add New Contact ",
                          // style: TextStyle(color: yaziRenk1),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}


//  Ders Çalışma
// class Chip extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         print("Birth Chart");
//       },
//       child: Text(
//         "Pallas",
//         // style: TextStyle(color: yaziRenk1),
//       ),
//       style: TextButton.styleFrom(
//         backgroundColor: anaRenk,
//         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
//       ),
//     );
//   }
// }

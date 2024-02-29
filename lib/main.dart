import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar America Valdez",
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MiPaginaInicial(),
    );
  }
} // fin de mi AppMiTapBar

//statefull
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar America Valdez"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Hoddie",
                icon: Icon(Icons.access_time),
              ),
              Tab(
                text: "Playeras",
                icon: Icon(Icons.account_circle),
              ),
              Tab(
                text: "Gorros",
                icon: Icon(Icons.ad_units_sharp),
              ),
              Tab(
                text: "Shorts",
                icon: Icon(Icons.scanner_sharp),
              ),
            ], //fin de tab
          ), // fin botton Tabbar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Junior H Animado",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Playeras Canciones",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Corazones",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Emojis Tris",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ] //jardin de niños
            ), //fin de tapbbarview
      ), //fin de
    ); //DefaultTabController
  } //fin widgets
} //_MiPaginaInicialState

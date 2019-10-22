import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: kleineSeite(),
    );
  }
}

class kleineSeite extends StatefulWidget {
  @override
  _kleineSeiteState createState() => _kleineSeiteState();
}

class _kleineSeiteState extends State<kleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NICs APP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://upload.wikimedia.org/wikipedia/commons/6/68/Bild_21_-_Verbot_der_%C3%9Cberschreitung_bestimmter_Fahrgeschwindigkeiten_-_30_km%2C_StVO_1953.svg"),
            machMirNeReihe("NAME:", "NIC"),
            machMirNeReihe("ALTER:", "21"),
            machMirNeReihe("Kenntnisse:", "wenige"),
          ],
        ),
      ),
    );
  }

  Widget machMirNeReihe(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Text(
            wert,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}

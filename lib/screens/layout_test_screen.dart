import 'package:flutter/material.dart';

class LayoutTestScreen extends StatefulWidget {
  @override
  _LayoutTestScreenState createState() => _LayoutTestScreenState();
}

class _LayoutTestScreenState extends State<LayoutTestScreen> {
  String inhalt = "Hier kommt was hin";

  List<String> namen = [
    "Elisabeth",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutTest"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Der Inhalt ist: ${inhalt}"),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    inhalt = "der neue Wert";
                    namen.add("Noch ein Kind");
                  });
                },
                child: Text("drueck mich"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: namen.length,
                  itemBuilder: (context, index) {
                    return (Text("${index}: ${namen[index]}"));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

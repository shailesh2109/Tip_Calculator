import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List Quotes = [
    "The best is yet to be.",
    "Try to be a rainbow in someone's cloud.",
    "Do good and good will come to you.",
    "A positive mindset brings positive things.",
    "Positivity always wins",
    "When thigs go wrongs, don't go with them.",
    "Live life to the fullest and focus on the positive.",
    "Keep looking up",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 500,
                  height: 400,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5)),
                  child: Center(
                    child: Text(
                      Quotes[_index % Quotes.length],
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontStyle: FontStyle.italic,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  thickness: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton.icon(
                    onPressed: _showQuote,
                    icon: Icon(Icons.wb_sunny),
                    label: Text(
                      "Inspire me!",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    color: Colors.greenAccent.shade700,
                  ),
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: Wisdom(),
  ));
}

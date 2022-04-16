import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _Card(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _Card() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SHAILESH",
            style: TextStyle(fontSize: 20.9),
          ),
          Text("shaileshbourai2109@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("8447634937"),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(40)),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BizCard(),
  ));
}

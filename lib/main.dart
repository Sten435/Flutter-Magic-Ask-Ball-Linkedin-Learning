import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  const Ballpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            "Ask Me Anything",
          ),
        ),
        body: Bal(),
      );
    } catch (e) {
      print(e);
    }
  }
}

class Bal extends StatefulWidget {
  Bal({Key key}) : super(key: key);

  @override
  State<Bal> createState() => _BalState();
}

class _BalState extends State<Bal> {
  int currentImage = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextButton(
        onPressed: () {
          setState(() {
            currentImage = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset(
          "images/ball$currentImage.png",
        ),
      )),
    );
  }
}

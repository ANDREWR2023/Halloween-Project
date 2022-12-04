import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Home());
}

int counter = 0;
int pos = Random().nextInt(4);
int pic = Random().nextInt(4);
String win = '0';
List<IconData> icons = [
  Icons.tsunami_sharp,
  Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
  Icons.mode_night_sharp,
  Icons.snapchat,
];

Alignment setX() {
  if (pos == 0) {
    return Alignment.topLeft;
  }
  if (pos == 1) {
    return Alignment.topRight;
  }
  if (pos == 2) {
    return Alignment.bottomLeft;
  } else {
    return Alignment.bottomRight;
  }
}

String setText() {
  if (counter >= 10) {
    return ('$counter' + ' ----------------------- Happy Halloween!');
  } else {
    return '$counter';
  }
}

Alignment x = setX();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  @override
  _State({Key? key});
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'School Menu',
        home: Scaffold(
            appBar: AppBar(
              title: Text(win),
            ),
            body: Scaffold(
                body: Container(
                    color: Colors.white,
                    child: Align(
                        alignment: x,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                pos = Random().nextInt(4);
                                pic = Random().nextInt(4);
                                counter++;
                                x = setX();
                                win = setText();
                              });
                            },
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.red,
                                child: Icon(icons[pic], size: 100))))))));
  }
}

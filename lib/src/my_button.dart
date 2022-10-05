import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override // = sobrescriber metodos que ya existen de main
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // _ = clases privadas
  String flutterText = "";
  int index = 0;
  List<String> collection = ['Flutter', 'Es', 'Genial'];
  void onPressedButton() {
    setState(() {
      flutterText = collection[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("190929"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[    
                Text(flutterText, style: TextStyle(fontSize: 40.0)),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                ElevatedButton(
                    //traer un widget o botton alzado
                    child: Text(
                      "Santiago",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: onPressedButton,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors
                            .amber)) // ElevatedButton.styleFrom(primary: Colors.pink.shade100),
                    )
              ],
            ),
          ),
        ));
  }
}

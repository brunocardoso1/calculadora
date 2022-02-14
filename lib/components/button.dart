import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const Dark = Color.fromRGBO(82, 82, 82, 1);
  static const Gray = Color.fromRGBO(112, 112, 112, 1);
  static const Operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final Color fontColor;
  final void Function(String) cb;


  Button({
    @required this.text,
    this.big = false,
    this.color = Dark,
    this.fontColor = Colors.white,
    @required this.cb,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = Operation,
    this.fontColor = Colors.black,
    @required this.cb,
  });

  Button.gray({
    @required this.text,
    this.big = false,
    this.color = Gray,
    this.fontColor = Colors.white,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1, // se o "big" for true = 2 se não for = 1
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.color,

        ),
        child: Text(
          text,
          style: TextStyle(
            color: this.fontColor,
            fontSize: 35,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}

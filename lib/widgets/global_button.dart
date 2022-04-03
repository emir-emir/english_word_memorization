import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  void Function()? onPressed;
  String? textName;

  GlobalButton({this.onPressed, this.textName});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: onPressed,
      child: Text(textName!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    ));
  }
}

import 'package:flutter/material.dart';

class GlobalText extends StatelessWidget {
  String? textName;
  GlobalText({this.textName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textName!,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}

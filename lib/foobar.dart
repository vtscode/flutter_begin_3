import 'package:flutter/material.dart';

class FooBar extends StatelessWidget {

  final String content;
  final Color textColor;
  final Color backgroundColor;
  FooBar({@required this.content, this.textColor = Colors.white, this.backgroundColor = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Text(content, style: TextStyle(color: textColor),),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black26,
            offset: Offset(2,2),
          )
        ]
      ),
    );
  }
}

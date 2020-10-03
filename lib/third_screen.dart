import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Screen'),
        ),
        body: Container(
          child: Column(
              children: [
                Text('Third Screen'),

                RaisedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child:Text('Goto Home Screen') ,
                ),
              ]
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_firebase/cupertino.dart';
import 'package:flutter_firebase/second_screen.dart';
import 'package:flutter_firebase/third_screen.dart';
import 'package:flutter_firebase/ui_example.dart';
import 'foobar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title : 'This is app title'),
      theme: ThemeData(
        fontFamily: "publicsans",
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.black26,
          textTheme: TextTheme(
            // ignore: deprecated_member_use
            title: TextStyle(
              color: Colors.black
            )
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          ),
          textTheme: ButtonTextTheme.primary
        ),
        brightness: Brightness.light
      ),
      darkTheme:  ThemeData(
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
              ),
              textTheme: ButtonTextTheme.primary
          ),
          brightness: Brightness.dark
      ),
      routes: {
        "/second" : (context) => SecondScreen(),
        "/third" : (context) => ThirdScreen(),
        "/cupertino" : (context) => CupertinoExample(),
        "/uiexample" : (context) => UIExample(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key,this.title}) :super(key : key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/uiexample');
              },
              child:Text('UI example screen') ,
            ),RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/cupertino');
              },
              child:Text('cupertino screen') ,
            ),RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
              child:Text('third screen') ,
            ),
            RaisedButton(
              onPressed: (){
                //push for have back button, but pushreplacement doesnt, use it for after login page
                // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SecondScreen()));

                //name one routes name on MaterialApp()
                Navigator.pushNamed(context, '/second');
              },
              child:Text('Goto Second Screen') ,
            ),

            Image(
              image: AssetImage('assets/sip.gif'),
            ),
            Image(
              image: NetworkImage('https://via.placeholder.com/200'),
            ),
            FadeInImage(
              image: NetworkImage('https://via.placeholder.com/200'),
              placeholder: AssetImage('assets/sip.gif'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            FooBar(
              content: 'asda' ,
              backgroundColor: Colors.yellow,
            ),
            FooBar(
              content: 'asda' ,
              backgroundColor: Colors.deepOrange,
              textColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}


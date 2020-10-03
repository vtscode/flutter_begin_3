import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foobar.dart';

class CupertinoExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          primaryContrastingColor: Colors.blue,
          primaryColor: Color(0xff000000),
          scaffoldBackgroundColor: Colors.white70
      ),
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('HAHAHA cupertino example'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('haiii'),
              CupertinoButton(
                child: Text('Button cupertino'),
                onPressed: (){},
              ),

              CupertinoButton.filled(
                child: Text('Button cupertino filled'),
                onPressed: (){},
              ),

              CupertinoSlider(
                value:10,
                min: 0,
                max: 100,
                onChanged: (value){},
              ),

              CupertinoTextField(
              ),
              FooBar(
                content: 'asda' ,
              ),FooBar(
                content: 'asda' ,
                backgroundColor: Colors.yellow,
              ),FooBar(
                content: 'asda' ,
                backgroundColor: Colors.deepOrange,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

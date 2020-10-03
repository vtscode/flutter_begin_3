import 'package:flutter/material.dart';

class UIExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Example'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                child: Image(
                  image: NetworkImage('https://psdlearning.com/wp-content/uploads/2017/08/vaping-wizard.jpg'),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff000000),
                        Color(0x00000000)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center
                    )
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text('25 AMAZING COLORFUL PHOTOGRAPHY', style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),
                      Row(
                        children: [
                          ActionChip(
                              label: Text("PHOTOGRAPHY",style: TextStyle(color: Colors.white),),
                              onPressed: (){},
                              backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 20,),
                          ActionChip(
                              label: Text("COLOR", style: TextStyle(color: Colors.white),),
                              onPressed: (){},
                              backgroundColor: Colors.blue,
                          ),
                        ],
                      )


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

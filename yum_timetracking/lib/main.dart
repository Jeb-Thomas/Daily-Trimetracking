// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.AppBar.actions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatelessWidget(),

    );

  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox.expand(
                        child:
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_left),
                            onPressed: (){},
                          ),
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: SizedBox.expand(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                          ),
                          child: Center(child: Text("3/7/19", style: TextStyle(fontSize: 30),),)
                        ),
                      ),
                      flex: 20,
                    ),
                    Expanded(
                      child: SizedBox.expand(
                        child:
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed: (){},
                          ),
                        ),
                      ),
                      flex: 5,
                    ),
                  ],
                ),
              flex: 2,
            ),
            Expanded(
              child: SizedBox.expand(child: null,),
              flex: 15,
            ),
          ],
        ),
      appBar: AppBar(
        title: Text('Hello World'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
    );
  }
}

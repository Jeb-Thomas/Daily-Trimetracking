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
                            color: Colors.white,
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
                            color: Colors.white,
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
              child: ListView(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Projects"),
                    children: <Widget>[
                      CheckboxListTile(
                        value: true,
                        title: Text('Hardware Support'),
                        onChanged: (bool value){},
                      ),
                      CheckboxListTile(
                        value: true,
                        title: Text('Software Support'),
                        onChanged: (bool value){},
                      ),
                      CheckboxListTile(
                        value: false,
                        title: Text('Vacation'),
                        onChanged: (bool value){},
                      ),
                    ],
                  ),
                  Column(
                    children:
                    <Widget>[
                      Ink(
                        color: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: Text("Software Support",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                              ),
                              flex: 6,
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 5.0,
                                    child: null,
                                  ),
                                  Ink(
                                    color: Colors.white,
                                    child: TextField(decoration: InputDecoration(hintText: '0'),),
                                  ),
                                ],
                                /*child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white
                                  ),
                                  child: TextField(),
                                ),*/
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Ink(
                        color: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('0'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('1'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('2'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('3'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('4'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('5'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('6'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('7'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('8'),)),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20.0,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Column(
                    children:
                    <Widget>[
                      Ink(
                        color: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: Text("Hardware Support",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                              ),
                              flex: 6,
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 5.0,
                                    child: null,
                                  ),
                                  Ink(color: Colors.white, child: TextField(decoration: InputDecoration(hintText: '0'),),),
                                ],
                                /*child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white
                                  ),
                                  child: TextField(),
                                ),*/
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Ink(
                        color: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('0'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('1'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('2'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('3'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('4'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('5'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('6'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('7'),)),
                            Expanded(child: RaisedButton(onPressed: (){}, child: Text('8'),)),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              flex: 14,
            ),
            Expanded(
              child: SizedBox.expand(
                child: RaisedButton(
                  color: Colors.grey.shade600,
                  child: Text("Sumbit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  onPressed: (){},
                ),
              ),
              flex: 2,
            ),
          ],
        ),

      appBar: AppBar(
        title: Text('YUM! Timekeeping'),
        actions: <Widget>[
          /*IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // ...
            },
          ),*/
        ],
      ),
      drawer: Drawer(),
    );
  }
}

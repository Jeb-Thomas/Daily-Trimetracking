// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import './hoursTile.dart';
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
var hours = [0,0,0];
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
              child: Ink(
                color: Colors.black87,
                child: ListView(
                  children: <Widget>[
                    Ink(
                      child: ExpansionTile(
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
                      color: Colors.white,
                    ),
                    Container(
                      height: 20.0,
                    ),
                    MyHours(nameOfTask: "Software Support", numHours: hours[0],),
                    MyHours(nameOfTask: "Hardware Support", numHours: hours[1],),
                    //MyHours(nameOfTask: "Vacation", numHours: hours[2],),
                  ],
                ),
              ),
              flex: 14,
            ),
            Expanded(
              child: SizedBox.expand(
                child: RaisedButton(
                  color: Colors.grey.shade600,
                  child: Text("Sumbit ${totalNumberOfHours().toString()} hours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
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
int totalNumberOfHours(){
  int total=0;
  for(int i=0;i<hours.length;i++){
    total+=hours[i];
  }
  return total;
}
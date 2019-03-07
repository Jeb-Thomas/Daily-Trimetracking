import 'package:flutter/material.dart';
import './main.dart';
class MyHours extends StatefulWidget{
  final String nameOfTask;
  final int numHours;
  @override
  State<StatefulWidget> createState(){
    return MyHoursTile(nameOfTask: nameOfTask, numHours: numHours);
  }

  MyHours({Key key, @required this.nameOfTask, @required this.numHours}) : super (key:key);
  //SecondScreenWithData({Key key, @required this.person}) : super(key: key);
}

class MyHoursTile extends State<MyHours>{
  int numHours;
  final String nameOfTask;
  MyHoursTile({Key key, @required this.nameOfTask, @required this.numHours});
  @override
  Widget build(BuildContext context){
    return Column(
      children:
      <Widget>[
        Ink(
          color: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(nameOfTask,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                ),
                flex: 6,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 8.0,
                      child: null,
                    ),
                    Ink(
                      color: Colors.white,
                      child:
                      Container(
                        height: 20.0,
                        width: 20.0,
                        child: Center(
                          child: Text(
                            numHours.toString(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 8.0,
                      child: null,
                    ),
                  ],
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
              Expanded(child: RaisedButton(onPressed: (){numHours = 0;setState(() {hours[0]=0;});}, child: Text('0'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 1;setState(() {hours[0]=1;});}, child: Text('1'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 2;setState(() {hours[0]=2;});}, child: Text('2'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 3;setState(() {hours[0]=3;});}, child: Text('3'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 4;setState(() {hours[0]=4;});}, child: Text('4'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 5;setState(() {hours[0]=5;});}, child: Text('5'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 6;setState(() {hours[0]=6;});}, child: Text('6'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 7;setState(() {hours[0]=7;});}, child: Text('7'),)),
              Expanded(child: RaisedButton(onPressed: (){numHours = 8;setState(() {hours[0]=8;});}, child: Text('8'),)),

            ],
          ),
        ),
        Container(
          height: 20.0,
        ),
      ],
    );
  }
}
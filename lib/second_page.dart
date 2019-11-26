import 'package:flutter/material.dart';

import 'model/data.dart';

class SecondPage extends StatefulWidget {
  final Data data;

  SecondPage({this.data});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constructor — second page'),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
                height: 54.0,
                padding: EdgeInsets.all(12.0),
                child: Text('Data passed to this page:',
                    style: TextStyle(fontWeight: FontWeight.w700))),
            Text('Text: ${widget.data.text}'),
            Text('Counter: ${widget.data.counter}'),
            Text('Date: ${widget.data.dateTime}'),
//            RaisedButton(
//            onPressed: () {
//              Navigator.pop(context, widget.data);
//            },// data back to the first screen},
//            child: Text('Back'),
//            ),
          ],
        ),
      ),
    );
  }
}

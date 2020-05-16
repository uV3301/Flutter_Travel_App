import 'package:flutter/material.dart';
import '../../models/tripdata.dart';

class NewTripBudgetView extends StatelessWidget {
  final tripdata trip;
  NewTripBudgetView(this.trip);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create new trip - Location"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter your Budget"),
            
            RaisedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Text("Finish"),
            )
          ],
        )));
  }
}
import 'package:flutter/material.dart';
import '../../models/tripdata.dart';
import './bidget_view.dart';

class NewTripDateView extends StatelessWidget {
  final tripdata trip;
  NewTripDateView(this.trip);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create new trip - Date"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Enter start Date"),
                Text("Enter end Date"),
              ],
            ),
            RaisedButton(
              onPressed: () {
                // trip.title = _txtcontroller.text;
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NewTripBudgetView(trip)));
              },
              child: Text("Next"),
            )
          ],
        )));
  }
}

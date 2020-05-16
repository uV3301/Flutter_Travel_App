import 'package:flutter/material.dart';
import '../../models/tripdata.dart';
import './date_view.dart';

class NewTripLocationView extends StatelessWidget {
  final tripdata trip;
  NewTripLocationView(this.trip);
  @override
  Widget build(BuildContext context) {
    TextEditingController _txtcontroller = TextEditingController();
    _txtcontroller.text = trip.title;
    return Scaffold(
        appBar: AppBar(
          title: Text("Create new trip - Location"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter your location"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                controller: _txtcontroller,
              ),
            ),
            RaisedButton(
              onPressed: () {
                trip.title = _txtcontroller.text;
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTripDateView(trip)));
              },
              child: Text("Next"),
            )
          ],
        )));
  }
}

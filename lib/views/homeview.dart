import 'package:flutter/material.dart';
import '../models/tripdata.dart';
import 'package:intl/intl.dart';


class HomeView extends StatelessWidget {
  final List<tripdata> tripTitles = [
    tripdata("Singapore", DateTime.now(), DateTime.now(), 300.50, "Ship"),
    tripdata("New Delhi", DateTime.now(), DateTime.now(), 500, "Car"),
    tripdata("NYC", DateTime.now(), DateTime.now(), 600.00, "Airplane"),
    tripdata("Budapest", DateTime.now(), DateTime.now(), 560, "Airplane"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: tripTitles.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildTripCard(context, index),
      ),
    );
  }

  Widget _buildTripCard(BuildContext context, int index) {
    final trip = tripTitles[index];
    return Container(
        child: Card(
            child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 4),
            child: Row(
              children: <Widget>[
                Text(trip.title, style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 50),
            child: Row(
              children: <Widget>[
                Text(
                    "${DateFormat('dd/MM/yy').format(trip.startdate)} - ${DateFormat('dd/MM/yy').format(trip.enddate)}"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 8),
            child: Row(
              children: <Widget>[
                Text("\$${trip.budget.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 35)),
                Spacer(),
                Icon(Icons.airplanemode_active),
              ],
            ),
          )
        ],
      ),
    )));
  }
}

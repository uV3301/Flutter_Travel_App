import 'package:flutter/material.dart';
import './pages.dart';
import './views/homeview.dart';
import './views/new_trip/location_view.dart';
import './models/tripdata.dart';
class Homepage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homepage> {
  final List<Widget> _children = [
    HistoryKeyPage(),
    ExploreKeyPage(),    
    HomeView(),

  ];
  int curIndex= 1;

  void ontapNavbar(int index) {
    setState(() {
      curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final newtrip = tripdata(null, null, null, null, null);
    return Scaffold(  
      appBar: AppBar(  
        title: Text("New travel home", style: TextStyle(color: Colors.grey)),
        elevation: 10,
        actions: <Widget>[
          IconButton( 
            icon: Icon(Icons.add_box),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NewTripLocationView(newtrip)));
            },
          )
          
        ],
      ),
      body: _children[curIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontapNavbar,  
        currentIndex: curIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("History"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}
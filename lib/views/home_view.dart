import 'package:flutter/material.dart';
// individual screens will now be called as views.

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildTripCard();
  }
  // change the name of this widget later. this provides the framework for the card
  Widget buildTripCard(){
    return new Container(
      color: Colors.blue[200],
      child: Card(
        child: Column(
          children: <Widget>[
            Text("Music"),
          ]
        )

      ),
    );
  }
}
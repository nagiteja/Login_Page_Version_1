import 'package:flutter/material.dart';
// this home page widget r class is not needed anymore now as individual screens are called views and instead of home page there is already a file claled home view 
// can delete this later.
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue[200],
//       child: Text("this is the actual homepage"),
//     );
//   }
// }

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[200],
      child: Text("This is the user page where he can edit the details"),
    );
  }
}

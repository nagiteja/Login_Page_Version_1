import 'package:flutter/material.dart';
import 'package:nagi_trial_two/views/home_view.dart';
import 'package:nagi_trial_two/pages.dart';
import 'package:nagi_trial_two/widgets/provider_widget.dart';
import 'package:nagi_trial_two/services/auth_service.dart';

// this home class is the basically our entire app's view. top navigation and bottom navogation bar.
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex =0;
  // this children widget holds the pages of the app in correspondance to the bottom navigation bar.
  final List<Widget> _children =[
    HomeView(),
    UserPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PEACE"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.undo),
            onPressed: () async {
              try{
                AuthService auth = Provider.of(context).auth;
                await auth.signOut();
                print("Signed Out");
              } catch (e){
                print(e);
              }

            },
            )
        ]
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // on tap needs a fucntion
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text("Home"),
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.people_outline),
            title: Text("User"),
            ),

        ]
        ),
    );
  }
void onTabTapped(int index){
setState((){
  _currentIndex = index;

});
}
}
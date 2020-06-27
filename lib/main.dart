import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:nagi_trial_two/services/auth_service.dart';
import 'package:nagi_trial_two/views/sign_up_view.dart';
import 'home_widget.dart';
import 'package:nagi_trial_two/views/first_view.dart';
//import 'package:auto_size_text/auto_size_text.dart';
import 'package:nagi_trial_two/widgets/provider_widget.dart';
// 1) look at the pubspec.yaml file.
// 2) Go to android and go to app and then go to build.gradle then change the sdk version and add the plugin. 
// 3) go to your seetings.gradle which is under andriod and make sure everthing is the same.
// 4) go to  android then go to build.gradle and add the classpath. 


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
          auth: AuthService(),
          child: MaterialApp(
        title: 'Peace',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        // this home() is the homepage of the app will be creating this new widget ina  new file home widget dart file.
        //home: Home(),
        
        home: HomeController(),
        routes: <String, WidgetBuilder>{
          '/signUp' : (BuildContext context) => SignUpView(authFormType: AuthFormType.signUp),
          '/signIn' : (BuildContext context) => SignUpView(authFormType: AuthFormType.signIn),
          '/home'   : (BuildContext context)  => HomeController(),

        }
      ),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if(snapshot.connectionState == ConnectionState.active){
          final bool signedIn = snapshot.hasData;
          return signedIn ? Home() : FirstView();
        }
        return CircularProgressIndicator();
      },
      );
  }
}



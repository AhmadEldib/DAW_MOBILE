import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  // const Dashboard({Key key}) : super(key: key);
  static const routeName = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Text(
          "My Dashboard",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}


// git config --global user.email "you@example.com"
// git config --global user.name "Your Name"
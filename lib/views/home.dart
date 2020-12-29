import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Test())),
      ),
      body: Center(
        child: Text("home"),
      ),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
    );
  }
}

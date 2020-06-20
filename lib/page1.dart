import 'package:flutter/material.dart';
import 'package:navonly/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Page2()));

          showDialog(context: context,
            builder: (context) => AlertDialog(
              title: Text(result)
            ));
        },
        child: Icon(Icons.arrow_right),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Page 1",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

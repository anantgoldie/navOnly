import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _popWithResult(context, 'Back from android back button');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _popWithResult(context, 'Back from appbar back button');
              }),
          title: Text('Page 2'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _popWithResult(context, 'Back from floating back button');
          },
          child: Icon(Icons.arrow_left),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Page 2",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  void _popWithResult(BuildContext context, dynamic val) {
    Navigator.pop(context, val);
  }
}

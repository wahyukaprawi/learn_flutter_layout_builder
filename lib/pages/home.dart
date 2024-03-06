import 'dart:ffi';

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text('Learn Layout Builder'),
    );
    final hightStatusBar = MediaQuery.of(context).padding.top;
    final heightBody =
        heightApp - myAppBar.preferredSize.height - hightStatusBar;
    return Scaffold(
      appBar: myAppBar,
      body: Container(
        height: heightBody * 0.3,
        width: widthApp,
        color: Color(0xFFD5D5D5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  MyContainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return Container(
          height: p1.maxHeight * 0.7,
          width: widthApp * 0.25,
          color: Colors.amber,
        );
      },
    );
  }
}

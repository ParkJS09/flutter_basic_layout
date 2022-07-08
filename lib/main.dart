import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/blue_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BasicPage(),
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Basic Layout'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('start',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 24
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text('end',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 24
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text('center',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 24
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text('SpaceBetween',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 24
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text('SpaceAround',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 24
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text('spaceEvenly',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 24
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),

        ],
      ),
    );
  }

  Widget showRowLayout(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

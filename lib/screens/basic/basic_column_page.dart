import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/screens/components/blue_box.dart';

class BasicColumnPage extends StatelessWidget {
  const BasicColumnPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            showColumn('start', MainAxisAlignment.start),
            showColumn('end', MainAxisAlignment.end),
            showColumn('center', MainAxisAlignment.center),
            showColumn('spaceBetween', MainAxisAlignment.spaceBetween),
            showColumn('spaceAround', MainAxisAlignment.spaceAround),
            showColumn('spaceEvenly', MainAxisAlignment.spaceEvenly),
          ],
        ));
  }

  Widget showColumn(String title, MainAxisAlignment alignment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 24),
          ),
          Expanded(child: Column(
            mainAxisAlignment: alignment,
            children: [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ))
        ],
      ),
    );
  }
}

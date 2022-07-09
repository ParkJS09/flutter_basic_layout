import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/screens/components/blue_box.dart';

class BasicRowPage extends StatelessWidget {
  const BasicRowPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'start',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text(
            'end',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text(
            'center',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text(
            'SpaceBetween',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text(
            'SpaceAround',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BlueBox(),
              BlueBox(),
              BlueBox(),
            ],
          ),
          const Text(
            'spaceEvenly',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
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
}

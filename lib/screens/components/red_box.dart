import 'package:flutter/material.dart';

class RedBox extends StatelessWidget {
  const RedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all()
      ),
    );
  }
}

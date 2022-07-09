import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String route;
  final String title;

  const CommonButton({Key? key, required this.route, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        title,
      ),
    );
  }
}

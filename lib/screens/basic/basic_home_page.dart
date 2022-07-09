import 'package:flutter/material.dart';

class BasicHomePage extends StatelessWidget {
  const BasicHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기본 레이아웃'),
      ),
      body: ListView(
        children: [
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/row');
          }, child: const Text('ROW')),
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/column');
          }, child: const Text('Column'))
        ],
      ),
    );
  }
}

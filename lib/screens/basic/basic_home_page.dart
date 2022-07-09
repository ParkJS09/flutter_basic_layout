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
        padding: const EdgeInsets.all(14.0),
        children: [
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/row');
          }, child: const Text('Row (가로 배치)')),
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/column');
          }, child: const Text('Column (세로 배치)')),
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/flex');
          }, child: const Text('Flex&Expanded (위젯의 Flexible)')),
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/sizeBox');
          }, child: const Text('SizeBox&Spaced (위젯의 Size)')),
          OutlinedButton(onPressed: (){
            Navigator.pushNamed(context, '/basic/tutorial');
          }, child: const Text('예제_명함 만들기')),
        ],
      ),
    );
  }
}

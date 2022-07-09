import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/screens/basic/basic_column_page.dart';
import 'package:flutter_layout_basic/screens/basic/basic_home_page.dart';
import 'package:flutter_layout_basic/screens/basic/basic_row_page.dart';
import 'package:flutter_layout_basic/screens/components/blue_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 UI 연습장',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BasicPage(),
        '/basic': (context) => const BasicHomePage(),
        '/basic/row': (context) => const BasicRowPage(),
        '/basic/column': (context) => const BasicColumnPage(),
      },
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('플러터 UI 연습장'),
        ),
        body: ListView(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/basic');
                },
                child: const Text('기본 레이아웃'))
          ],
        ));
  }
}

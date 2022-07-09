import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/screens/components/common_button.dart';

class InfoHomePage extends StatelessWidget {
  const InfoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('정보표시를 위한 위젯'),
        ),
        body: ListView(
          children: const [
            CommonButton(route: '/info/grid', title: '그리드 레이아웃')
          ],
        ),
    );
  }
}

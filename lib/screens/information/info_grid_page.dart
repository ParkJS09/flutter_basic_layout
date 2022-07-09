import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/utils/FormFactor.dart';

class InfoGridPage extends StatelessWidget {
  const InfoGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Widget'),
      ),
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          crossAxisCount: getCrossAxisCount(context),
          children: List.generate(100, (index) {
            return Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Image.network(
                  'https://picsum.photos/200/300'
              ),
            );
          })),
    );
  }

  int getCrossAxisCount(BuildContext context) {
    ScreenType type = FormFactor().getFormFactor(context);
    switch (type) {
      case ScreenType.Desktop:
      case ScreenType.Tablet:
        return 4;
      case ScreenType.Handset:
        return 2;
      case ScreenType.Watch:
        return 0;
    }
  }
}

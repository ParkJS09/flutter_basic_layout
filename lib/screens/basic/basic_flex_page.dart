import 'package:flutter/material.dart';
import 'package:flutter_layout_basic/screens/components/blue_box.dart';
import 'package:flutter_layout_basic/screens/components/red_box.dart';

class BasicFlexPage extends StatelessWidget {
  const BasicFlexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex & Expanded'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            BlueBox(),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: RedBox(),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: BlueBox(),
            ),
          ]),
          const Center(
            child: Text(
              'FlexFit.loose 위젯의 기본 크기가 사용됩니다. (기본) FlexFit.tight 위젯이 추가 공간을 모두 채우도록 합니다.',
            ),
          ),
          SizedBox(height: 16,),
          Text('예제 ) Flex 2 : 1'),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: BlueBox(),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: RedBox(),
              ),
            ],
          ),
          Text('예제 ) Flex 1 : 2'),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: BlueBox(),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: RedBox(),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Text('Expanded 위젯'),
          Row(
            children: [
              BlueBox(),
              Expanded(child: RedBox()),
              BlueBox(),
            ],
          ),
          Text(
            'Flexible을 사용하여 Row 또는 Column 위젯 크기를 조정합니다.\n이렇게 하면 상위 위젯과 관련하여 크기를 유지하면서 하위 위젯의 간격을 조정할 수 있습니다.\nExpanded는 자식 위젯의 제약 조건을 변경하여 빈 공간을 채웁니다.'
          )
        ],
      ),
    );
  }
}

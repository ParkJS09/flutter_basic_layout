import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_layout_basic/screens/components/blue_box.dart';
import 'package:flutter_layout_basic/screens/components/red_box.dart';

class BasicSizeBoxPage extends StatelessWidget {
  const BasicSizeBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox & Spacer'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8.0),
        children: [
          Text('SizedBoxWidet : '),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                  'SizedBox는 위젯을 래핑할 때 높이 및 너비 속성을 사용하여 위젯의 크기를 조정합니다. '),
              const Text('위젯을 래핑하지 않을 때 height 및 width 속성을 사용하여 빈 공간을 만듭니다.'),
              const SizedBox(
                height: 16,
              ),
              const Text('예 : 가운데 박스만 크기 조정'),
              Row(
                children: const [
                  BlueBox(),
                  SizedBox(
                    width: 100,
                    child: RedBox(),
                  ),
                  BlueBox(),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const Text('예 : SizedBoxWidget을 활용한 widget간 margin 적용'),
              Row(
                children: const [
                  BlueBox(),
                  SizedBox(
                    width: 14,
                  ),
                  RedBox(),
                  SizedBox(
                    width: 14,
                  ),
                  BlueBox(),
                ],
              )
            ]),
          ),
          Divider(
            height: 1,
            color: Colors.black38,
          ),
          SizedBox(
            height: 14.0,
          ),
          Text('Spacer Widet : '),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('SizeBox와 유사하게 Spacer 위젯은 위젯 사이에 공간을 만들 수도 있습니다.'),
                  Text('SizeBox와 Spacer의 차이점? '),
                  Text('flex 속성을 사용하여 공간을 만들려면 Spacer를 사용.'),
                  Text('특정 픽셀을 사용하여 공간을 만들려면 SizedBox를 사용하십시오.'),
                ]),
          ),
          SizedBox(
            height: 14.0,
          ),
          Text('예 : spacer를 활용하여 박스 사이의 margin 주기'),
          Row(
            children: const [
              BlueBox(),
              Spacer(flex: 1),
              BlueBox(),
              Spacer(flex: 1),
              BlueBox(),
            ],
          )
        ],
      ),
    );
  }
}

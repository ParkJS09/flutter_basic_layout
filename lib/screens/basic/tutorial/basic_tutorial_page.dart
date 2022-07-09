import 'package:flutter/material.dart';

class BasicTutorialPage extends StatelessWidget {
  const BasicTutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나만의 명함 만들기'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(14.0),
        children: [
          Container(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSefDIovqrOkU4BQZNgr7SGDam4dRSVXXl5ZEadU9k72nPiLt-gWtz-3hyWZXASfDPH-8I&usqp=CAU'),
                    radius: 40,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ParkJS'),
                      Text('Android Developer'),
                      Text('in Seoul')
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.sms),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.email),
              )
            ],
          ),
        ],
      ),
    );
  }
}

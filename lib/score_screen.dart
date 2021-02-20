import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Score Screen',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xff5218fa),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 113,
              ),
              Text(
                'SUA PONTUAÇÃO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$result',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff5218fa),
                    ),
                  ),
                  Text(
                    '/ $maximum',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          )),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Color(0xffe5e4e2),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Jogar Novamente',
                  style: TextStyle(fontSize: 20),
                ),
                color: Color(0xffcae00d),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

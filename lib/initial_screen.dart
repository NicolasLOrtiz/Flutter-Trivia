import 'package:flutter/material.dart';
import 'package:trivia/trivia_screen.dart';

//Classes sempre comecam com Capital
class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffe5e4e2),
      child: Column(
        children: [
          SizedBox(height: 167.0),
          Image(
            image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(height: 24.0),
          Text('Trivia\nFlutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              )),
          SizedBox(
            height: 88.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TriviaScreen()),
              );
            },
            child: Text(
              'Começar',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            color: Color(0xffcae00d),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}

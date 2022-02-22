
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ditalse extends StatefulWidget {
  const Ditalse({Key? key}) : super(key: key);

  @override
  _DitalseState createState() => _DitalseState();
}

class _DitalseState extends State<Ditalse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(

      ),body: Card(
      child: ListView(
        children: [
        Image.asset('lib/assets/view/image/1644033560140.png',width: 500,height: 300,),
          Text('the program is the for free',)
        ],
      ),
    ),
    );
  }
}


import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('image/img_2.png'),
                      radius: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '098765432',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'user@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Column(
                          children: const <Widget>[
                            Text('Address Line 1'),
                            Text('Address Line 2'),
                            Text('Address Line 3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Country:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Text('Country Name'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



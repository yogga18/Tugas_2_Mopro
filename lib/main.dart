import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

// Tugas 2.1 Layouting Column and Row
class ColandRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Row(
          // SpaceBeetwen untuk 3 column yang berada di dalam row
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //Col 1
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                // Memposisikan Column di tengah
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Col 1'),
                  Text('Width : 100'),
                ],
              ),
            ),

            //Col 2
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Column(
                // Memposisikan Column di tengah
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Col 2'),
                  Text('Width : 100'),
                  Text('Height : 100'),
                ],
              ),
            ),

            //Col 3
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                // Memposisikan Column di tengah
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Col 3'),
                  Text('Width : 100'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tugas 2.2 Profile
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Center(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Foto Rounded
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 35.0, 0, 20.0),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/DSC_2351.jpg'),
                    ),
                  ),

                  // Name
                  Container(
                    child: Text(
                      'Yogga Aditya Candra',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'cursive',
                      ),
                    ),
                  ),

                  // Bio
                  Container(
                    child: Text(
                      'React Developer',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.normal,
                          fontFamily: 'cursive'),
                    ),
                  ),

                  // Under Line
                  Container(
                    child: SizedBox(
                      height: 20,
                      width: 200,
                      child: Divider(
                        color: Colors.white54,
                      ),
                    ),
                  ),

                  // Phone Number
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                    // padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.call),
                            title: Text('08623678123',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Email Address
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                    // padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.email),
                            title: Text('yogga@unpak.ac.id',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

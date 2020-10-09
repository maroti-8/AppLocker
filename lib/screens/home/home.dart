import 'package:AppLocker/screens/features/gallary.dart';
import 'package:AppLocker/screens/features/lock.dart';
import 'package:AppLocker/services/auth.dart';
import 'package:flutter/material.dart';

// Navigator not working, giving error for inkwell

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Locker'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout'))
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Lock(),
              )),
              child: Container(
                child: Card(
                  elevation: 24,
                  color: Colors.orange,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.lock,
                          size: 100,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 160, left: 75),
                        child: Text('Lock',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Gallary(),
              )),
              child: Card(
                elevation: 24,
                color: Colors.purple,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.photo,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 60),
                      child: Text('Gallary',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

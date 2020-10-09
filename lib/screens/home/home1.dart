import 'package:AppLocker/screens/features/gallary.dart';
import 'package:AppLocker/screens/features/lock.dart';
import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff392850),
        appBar: AppBar(
          backgroundColor: Color(0xff392850),
          title: Text('Health Fitness'),
          elevation: 20,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Lock(),
              )),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: new EdgeInsets.symmetric(horizontal: 10),
                elevation: 10,
                color: Color(0xff453658),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('assets/exercise.png'),
                            height: 85,
                          ) /* Icon(
                        Icons.lock,
                        size: 100,
                        color: Colors.white,
                      ), */
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 230),
                      child: Text('Exercise',
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
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Gallary(),
              )),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: new EdgeInsets.symmetric(horizontal: 10),
                elevation: 24,
                color: Color(0xff453658),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('assets/meditation.png'),
                            height: 85,
                          ) /* Icon(
                        Icons.photo,
                        size: 100,
                        color: Colors.white,
                      ), */
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 230),
                      child: Text('Meditation',
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

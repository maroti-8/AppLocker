import 'package:AppLocker/models/user.dart';
import 'package:AppLocker/screens/home/home1.dart';
import 'package:flutter/material.dart';

import 'package:AppLocker/screens/authenticate/authenticate.dart';
import 'package:AppLocker/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User1>(context);

    // return either Home or Authenticate widgit

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

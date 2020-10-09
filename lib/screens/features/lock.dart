import 'package:AppLocker/encrypt/my-encrypt.dart';
import 'package:AppLocker/shared/constants.dart';
import 'package:flutter/material.dart';

class Lock extends StatefulWidget {
  @override
  _LockState createState() => _LockState();
}

class _LockState extends State<Lock> {
  String inData = '';
  String hintData = '';
  String error = '';
  final _formKey = GlobalKey<FormState>();

  final fieldText_Data = TextEditingController();
  final fieldText_hintData = TextEditingController();

  void clearText() {
    fieldText_Data.clear();
    fieldText_hintData.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Lock'),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  controller: fieldText_Data,
                  decoration: textInputDecoration.copyWith(hintText: 'Data'),
                  validator: (val) => val.isEmpty ? 'Enter data' : null,
                  onChanged: (val) {
                    setState(() => inData = val.toString());
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.multiline,
                  controller: fieldText_hintData,
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Hint For above data'),
                  validator: (val) => val.isEmpty ? 'Enter Hint' : null,
                  onChanged: (val) {
                    setState(() => hintData = val.toString());
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Builder(
                  builder: (context) => RaisedButton(
                    color: Colors.grey[600],
                    child: Text(
                      'Lock',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        print(encryptAESCryptoJS(inData, hintData));
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Data Locked'),
                          duration: Duration(seconds: 3),
                        ));
                        clearText();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

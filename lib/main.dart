import 'package:flutter/material.dart';


void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _password = '';

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            //color: Colors.black,
            /*margin: EdgeInsets.only(
              top: 60,
            ),
            padding: EdgeInsets.only(
              top: 120
            ),*/
            child: Column(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                  ),
                  onChanged: (String text) {
                    /**
                     * _password = text;
                      print('La variables es: $_password');
                      print('El texto es: $text');
                     */
                    setState(() {
                      _password = text;
                    });
                  },
                ),
                Text(_password)
              ],
            )
            ),
        )
      ),
    );
  }
}
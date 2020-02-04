import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar example Flutter'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text('This is a Snackbar'),
                action: SnackBarAction(label: "Ok! It's Fine", onPressed: () {}),
              );
              Scaffold.of(context).showSnackBar(snackbar);
            },
            child: Text('Show the Snackbar'),
          )
        ],
      ),
    );
  }
}

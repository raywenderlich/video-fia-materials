import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter: Implicit Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // double _size = 100;
  // Color _boxColor = Colors.green;
  // double _boxOpacity = 1.0;
  bool _showBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _showBox ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            width: _showBox ? 200 : 100,
            height: _showBox ? 200 : 100,
            color: _showBox ? Colors.orange : Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // _size = _size == 100 ? 200 : 100;
            // _boxColor =
            //     _boxColor == Colors.green ? Colors.orange : Colors.green;
            // _boxOpacity = _boxOpacity == 1.0 ? 0.0 : 1.0;
            _showBox = !_showBox;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

void main(){
  enableFlutterDriverExtension();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const String _title = 'Flutter Sample Code';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
{
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('pCloudy Sample App'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
        key: Key('counter'),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(()=> _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget",
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget"),
      ),
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Home Page"),
                NumberWidget(),
              ]),
        ),
      ),
    );
  }
}

class NumberWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumberState();
  }
}

class _NumberState extends State<NumberWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("$_count",style: TextStyle(fontSize: 60,color: Colors.purple)),
          ElevatedButton(onPressed: (){
            setState(() {
              _count ++;
            });
          }, child: Text("Click Me!"))
        ],
      ),
    );
  }
}

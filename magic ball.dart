import 'package:flutter/material.dart';

//import 'package:untitled/piano.dart';
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            backgroundColor: Colors.blue[800],
          ),
          body: ball(),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);
  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<ball> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Image.asset('images/ball$count.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyDiceeApp(),
  );
}

class MyDiceeApp extends StatefulWidget {
  const MyDiceeApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDiceeApp> createState() => _MyDiceeAppState();
}

class _MyDiceeAppState extends State<MyDiceeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home: Scaffold(
        body: DicePage(),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[600],
          elevation: 2,
          shadowColor: const Color.fromARGB(180, 0, 0, 0),
        ),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Button 1 pressed!');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Button 2 pressed!');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

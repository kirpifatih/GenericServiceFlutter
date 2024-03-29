import 'package:flutter/material.dart';
import 'package:http_example/json_place_holder/json_place_holder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: JsonPlaceHolder(),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Material App',
      home: Scaffold(appBar: AppBar(title: Text('Generic Api'),
      ),
      body: Center(child: Container(child: Text("Hello Word"),),),
      ),
      
    );
  }
}

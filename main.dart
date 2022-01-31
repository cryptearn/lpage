import 'package:flutter/material.dart';
import 'package:lpage/login.dart';
void main(){
  runApp(Lpage());
}
class Lpage extends StatelessWidget {
  const Lpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

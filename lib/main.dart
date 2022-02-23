import 'package:appuhul/Cadastro.dart';
import 'package:appuhul/Lista.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/', routes: {
      '/lista':(context)=>Lista(),
      '/cadastro':(context)=>Cadastro(),
  },
    home: Home(),
  ));
}
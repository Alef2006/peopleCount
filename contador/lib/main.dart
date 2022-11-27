import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, //atributo para tirar o banner de debug
    home: HomePage(),
  ));
}

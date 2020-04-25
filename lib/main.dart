import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(MaterialApp(
  title: 'Whatsapp Clone',
  theme: ThemeData(
    primaryColor: Color(0xff075E54),
    accentColor: Color(0xff25D366),
  ),
  debugShowCheckedModeBanner: false,
  home: Home_Whatsapp(),
));




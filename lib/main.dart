import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

 Future<Null>main() async{
   WidgetsFlutterBinding.ensureInitialized();

   cameras = await availableCameras();
   runApp(MaterialApp(
    title: 'Whatsapp Clone',
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25D366),
    ),
    debugShowCheckedModeBanner: false,
    home: Home_Whatsapp(cameras),
  ));
}




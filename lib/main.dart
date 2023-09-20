
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../SplashScreen/SplashScreen.dart';
import 'constants/const_colors.dart';

void main()
{
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Color(0xffff6920)));
}
class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) :super(key: key);

  @override
Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SplashSreen(),
    );
  }
}
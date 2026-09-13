import 'package:flutter/material.dart';
import 'package:task_management/screens/login_screen.dart';
import 'package:task_management/utils/asset_path.dart';
import 'package:task_management/widget/screen_bg.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    moveToScreen();
  }

  Future moveToScreen()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBG(child: Center(child: Image.asset(AssetPath.logo,height: 200,width: 300,)),),
    );
  }
}


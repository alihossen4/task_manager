import 'package:flutter/material.dart';
import 'package:task_management/widget/screen_bg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBG(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(height: 150,),
            Text("Get Started With", style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(5),
                hintText: "Email",
              ),
            ),
              SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: .all(5),
                hintText: "Password",
              ),
            ),
              SizedBox(height: 10,),
            FilledButton(onPressed: (){}, 
             style: FilledButton.styleFrom(iconColor: Colors.white,backgroundColor: Colors.green,iconSize: 20,padding: .symmetric(horizontal: 1)),
             child: Icon(Icons.arrow_circle_right_outlined),),
              SizedBox(height: 8,),
            Column(children: [

              TextButton(onPressed: (){},child: Text("Forget Password?",style: TextStyle(color: Colors.lightGreen, fontSize: 18,),),),
              RichText(
                text: TextSpan(
                  text: "Don't Have a Account? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: Colors.green.shade300),
                    )
                  ]
                ),
                 
              ),
            ],)
          ],),
        ),
      ),
    );
  }
}
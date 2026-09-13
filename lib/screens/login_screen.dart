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
            Text("Get Started With", style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ), textAlign: TextAlign.center,),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(8),
                hintText: "Email",
              ),
            ),
              SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: .all(8),
                hintText: "Password",
              ),
            ),
              SizedBox(height: 12,),
            FilledButton(onPressed: (){}, 
             style: FilledButton.styleFrom(iconColor: Colors.white,backgroundColor: Colors.green,
             iconSize: 30,padding: .symmetric(horizontal: 1,vertical: 12), 
             fixedSize: Size.fromWidth(double.maxFinite), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
             ),
             child: Icon(Icons.arrow_circle_right_outlined),),
              SizedBox(height: 8,),
            Column(children: [

              TextButton(onPressed: (){},child: Text("Forget Password?",style: TextStyle(color: Colors.lightGreen, fontSize: 18,),),),
              RichText(
                
                text: TextSpan(
                  text: "Don't Have a Account? ",
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: Colors.green.shade300,fontSize: 16),
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
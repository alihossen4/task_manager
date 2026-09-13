import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/login_screen.dart';
import 'package:task_management/widget/screen_bg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  onTapMove(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBG(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
            SizedBox(height: 150,),
            Text("Join With Us", style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
            SizedBox(height: 5,),
            
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(8),
                hintText: "Email",
              ),
            ),

              SizedBox(height: 10,),
              TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(8),
                hintText: "First Name",
              ),
            ),
            
              SizedBox(height: 10,),
              TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(8),
                hintText: "Last Name",
              ),
            ),
            
              SizedBox(height: 10,),
              TextFormField(
              decoration: InputDecoration(
              contentPadding: .all(8),
                hintText: "Mobile",
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
              SizedBox(height: 12,),
            Column(children: [

              RichText(
                
                text: TextSpan(
                  text: "Already Have an Account? ",
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(color: Colors.green.shade300,fontSize: 16),
                      recognizer: TapGestureRecognizer()..onTap =onTapMove
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
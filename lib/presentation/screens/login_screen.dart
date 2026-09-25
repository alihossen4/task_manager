import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task_management/presentation/screens/main_nav_screen.dart';
import 'package:task_management/presentation/screens/signup_screen.dart';
import 'package:task_management/presentation/screens/task_screen.dart';
import 'package:task_management/service/urls.dart';
import 'package:task_management/presentation/widget/screen_bg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> onLogin()async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      
      var response = await http.get(Uri.parse(ApiUrl.loginUrl));
      if(response.statusCode == 200|| response.statusCode==201){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> TaskScreen()));
      }
    }
  }
  onTapMove(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
  }
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
            FilledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MainNavScreen()));
            }, 
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
                      recognizer: TapGestureRecognizer()..onTap = onTapMove
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
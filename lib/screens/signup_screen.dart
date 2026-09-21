import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/model/api_response.dart';
import 'package:task_management/screens/login_screen.dart';
import 'package:task_management/service/api_caller.dart';
import 'package:task_management/service/urls.dart';
import 'package:task_management/widget/screen_bg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  onTapMove(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  }
  bool emailValidate =false;
  bool firstnameValidate = false;
  bool passwordValidate = false;
  Future<void> onTapSignUp()async{
    if(emailController.text.isNotEmpty && firstnameController.text.isNotEmpty && passwordController.text.isNotEmpty){
    final ApiResponse response = await ApiCaller.postRequest(uri: ApiUrl.signupUrl,body:{
      "email": emailController.text,
      "firstname": firstnameController.text,
      "lastname": lastnameController.text,
      "mobile": mobileController.text,
      "password": passwordController.text,

    } );
    if(response.isSuccess){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

    }
    }
    else if(emailController.text.isEmpty){
    emailValidate=true;
    }
  else if(firstnameController.text.isEmpty){
      firstnameValidate = true;
    }else if(passwordController.text.isEmpty){
      passwordValidate= true;
    }
    
    else{
      firstnameValidate=true;
      emailValidate=true;
      passwordValidate=true;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBG(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
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
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter email";
                  }else{
                    return null;
                  }
                },
                controller: emailController,
                decoration: InputDecoration(
                contentPadding: .all(8),
                  hintText: "Email",
                  errorText: emailValidate? "Please Enter Email": "",
                ),
              ),
            
                SizedBox(height: 10,),
                TextFormField(
                  validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter name";
                  }else{
                    return null;
                  }
                },
                  controller: firstnameController,
                decoration: InputDecoration(
                contentPadding: .all(8),
                  hintText: "First Name",
                  errorText: firstnameValidate? "Please enter name": "",
                ),
              ),
              
                SizedBox(height: 10,),
                TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                contentPadding: .all(8),
                  hintText: "Last Name",
                ),
              ),
              
                SizedBox(height: 10,),
                TextFormField(
                  controller: mobileController,
                decoration: InputDecoration(
                contentPadding: .all(8),
                  hintText: "Mobile",
                ),
              ),
              
                SizedBox(height: 10,),
            
              TextFormField(
                obscureText: true,
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter password";
                  }else{
                    return null;
                  }
                },
                controller: passwordController,
                decoration: InputDecoration(
                  contentPadding: .all(8),
                  hintText: "Password",
                  errorText: passwordValidate? "Please Enter Password" : "",
                ),
              ),
                SizedBox(height: 12,),
              FilledButton(onPressed: (){
                onTapSignUp();
              }, 
               style: FilledButton.styleFrom(iconColor: Colors.white,backgroundColor: Colors.green,
               iconSize: 30,padding: .symmetric(horizontal: 1,vertical: 12), 
               fixedSize: Size.fromWidth(double.maxFinite), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
               ),
               child: Text("Sign Up",),
               
               ),
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
      ),
    );
  }
}
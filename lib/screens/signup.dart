import 'package:chatingapp/screens/login.dart';
import 'package:flutter/material.dart';

import '../widgets/textfiled.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final bioController = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(),flex:  2,),
              Image.asset("assets/bike.webp",scale: 5,),
              SizedBox(height: 50,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage("assets/bike.webp"),
                  ),
                  Positioned(
                    bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: (){},
                      icon: Icon(Icons.add_a_photo),))
                ],
              ),
              SizedBox(height: 24,),
              TextFieldInput(
                  textEditingController: emailController,
                  hintText: 'Enter user name',
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 24,),
              TextFieldInput(
                  textEditingController: emailController,
                  hintText: 'Enter your email',
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 24,),
              TextFieldInput(
                textEditingController: passwordController,
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                isPass: true,),
              SizedBox(height: 25,),
              TextFieldInput(
                  textEditingController: emailController,
                  hintText: 'Enter your bio',
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 24,),
              Container(
                child: Text('singup'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))
                    )
                ),
              ),
              Flexible(
                child: Container(),
                flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account"),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                    },
                    child: Container(
                      child: Text(" Log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

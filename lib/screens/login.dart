import 'package:chatingapp/screens/signup.dart';
import 'package:chatingapp/widgets/textfiled.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              Container(
                child: Text('Login'),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signupscreen()));
                    },
                    child: Container(
                      child: Text(" sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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

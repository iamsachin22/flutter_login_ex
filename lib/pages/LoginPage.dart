import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_tutorials/Utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Center(child: Container(height:350,width: 350,child: SvgPicture.asset("assets/icons/logindark.svg",))),
          //Expanded(child: SvgPicture.asset("assets/icons/login.svg",height: 200,width: 200,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.deepPurple)
                  ),
                  filled: true,
                  hintText: "User Name",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.deepPurple,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                hintText: "Password",
                hintStyle: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
      SizedBox(height: 20,),
      Container(height: 60,width: 300,
        child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoute.welcomeRoute);
                  },
                  child: Center(child: Text("LOGIN")),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
              ),
      ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ?",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,MyRoute.signUpRoute);
                },
                child: Text(" Sign Up",style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              )
            ],
          ),

        ],
      ),
    );
  }
}

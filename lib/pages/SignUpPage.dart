import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_tutorials/Utils/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Center(child: Container(height:250,width: 350,child: SvgPicture.asset("assets/icons/signup.svg",))),
          //Expanded(child: SvgPicture.asset("assets/icons/login.svg",height: 200,width: 200,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
              child: Center(child: Text("SIGNUP")),
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
              Text("Already have an Account ?",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,MyRoute.loginRoute);
                },
                child: Text(" Sign In",style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              )
            ],
          ),
           SizedBox(height: 20,),
          Text("-----------OR----------------"),
          Container(
            margin: EdgeInsets.fromLTRB(100.0, 0.0, 40.0, 0.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(backgroundColor:Colors.grey[200],child: SvgPicture.asset("assets/icons/facebook.svg",color : Colors.deepPurple,height: 20,width: 20,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(backgroundColor:Colors.grey[200],child: SvgPicture.asset("assets/icons/twitter.svg",color : Colors.deepPurple,height: 20,width: 20,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(backgroundColor:Colors.grey[200],child: SvgPicture.asset("assets/icons/google-plus.svg",color : Colors.deepPurple,height: 20,width: 20,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

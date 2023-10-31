import 'dart:ui';

import 'package:app2/routes/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool change_button=false;
  final _formkey=GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if(_formkey.currentState!.validate()) {
      setState(() {
        change_button = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        change_button = false;
      });
    }


  }
  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(
        child: Form(
          key: _formkey,


          child: Column(
          children: [
            Image.asset("welcome/img_1.png",fit: BoxFit.scaleDown,),
            SizedBox(
              height: 50,
            ),
            Text("Welcome $name",
            style: TextStyle(
              fontSize: 40,
              color: Colors.indigo,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 34),
              child: Column(children: [
                TextFormField(
                  decoration:InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return"Username cannot be empty";
                    }
                    return null;
                  },



                  onChanged: (value){
                      name=value;
                      setState(() {});
                  },


                ),
                TextFormField(
                  obscureText: true,
                    decoration:InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",

                    ),
                  validator: (value){
                    if(value!.isEmpty){
                      return"Password  cannot be empty";
                    }
                    else if(value.length <8){
                      return"password required minimum 8 digits";
                    }
                    return null;
                  },



                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(change_button?15:7),
                  child: InkWell(
                    onTap: () => movetohome(context),
                    child:AnimatedContainer(
                      duration: Duration(seconds: 1),


                      width:change_button?50: 160,
                      height: 50,
                      alignment: Alignment.center,
                      child: change_button? Icon(Icons.done, color:Colors.white):Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      ),
                    ),
                ),
              ],
              ),
            )
          ],
      ),
        ),


      ),// ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/routes.dart';
class Mydrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Image.asset("welcome/img.png",fit: BoxFit.scaleDown,),
            const DrawerHeader(
              padding: EdgeInsets.zero,

                child:
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Ayush Patil",textScaleFactor: 1.5,),
              accountEmail: Text("patilayush8788@gmail.com",
              textScaleFactor: 1.5,),
              currentAccountPicture:CircleAvatar(
                backgroundImage: AssetImage("welcome/img_2.png"),
              ) ,
            )),
            ListTile(
              // onTap: () => movetohome(context),
              leading: Icon(
                CupertinoIcons.home,color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.5,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
            )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.alarm,color: Colors.white,
                ),
                title: Text("Set Reminder",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,color: Colors.white,
                ),
                title: Text("mail me",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                )
            ),
            ListTile(

                leading: Icon(
                  CupertinoIcons.memories,color: Colors.white,
                ),
                title: Text("Memories",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                )
            )
          ],
        ),
      ),
    );
  }


}

// movetohome(BuildContext context) {
//   Navigator.pushNamed(context, Myroutes.homeRoute);
// }
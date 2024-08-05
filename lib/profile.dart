import 'package:flutter/material.dart';
import 'package:projectk/Notification_page.dart';
import 'package:projectk/Privacy.dart';
import 'package:projectk/setting.dart';
import 'account_info.dart';
import 'logout.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  void _username(){
    TextField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/user.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                  onPressed: _username,
                  child: Text(
                    "@user1234567",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountInfo()),
                        );
                      },

                      child: Text(
                        "Account Info",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()),
                        );
                      },

                      child: Text(
                        "Setting",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Notification_Page()),
                        );
                      },

                      child: Text(
                        "Notification",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text(
                      "Medicine database",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()),
                        );
                      },

                      child: Text(
                        "Privacy",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()),
                        );
                      },

                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
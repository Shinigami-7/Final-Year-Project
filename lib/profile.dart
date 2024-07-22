import 'package:flutter/material.dart';
import 'account_info.dart';
import 'treatment_page.dart';
import 'logout.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Profile',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.blue,)),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => TreatmentPage()),
                );
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/user.png', // Ensure this path is correct
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
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text(
                      "Notification",
                      style: TextStyle(
                        fontSize: 18,
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
                    child: Text(
                      "Privacy",
                      style: TextStyle(
                        fontSize: 18,
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
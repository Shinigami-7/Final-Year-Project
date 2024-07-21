import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.blue),),
      ),
      body: Center(
        child: Column(
          children: [


            Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
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
          ],
        ),
      ),
    );
  }
}

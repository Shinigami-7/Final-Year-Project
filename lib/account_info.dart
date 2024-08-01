import 'package:flutter/material.dart';
import 'profile.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // automaticallyImplyLeading: false,
        title: Text("Account Info", style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),),

      ),
      body: Container(
        color: Colors.amber,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
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
                        padding: const EdgeInsets.only(top: 10.0, bottom: 15),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Name"), Text("@user1234567")],
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Moblie"), Text("+977 987*******")],
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Email"), Text("example@gmail.com")],
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.pin_drop,
                          size: 50,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Address"), Text("Location")],
                          ),
                        )
                      ],
                    )),
              )
            ]),
      ),
    );
  }
}
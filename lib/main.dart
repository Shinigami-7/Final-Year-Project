import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("My Project"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/logo1-removebg-preview.png')
            ),
            Container(
              height: 50,
              width: 150,
              color: Colors.grey,
              child: Center(
                  child: Text("Login Here", style:
                  TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(
                height: 30,
                width: 300,
                color: Colors.white70,
                child: Center(
                  child: Text("Username", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontStyle: FontStyle.italic
                  ),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(
                height: 30,
                width: 300,
                color: Colors.white70,
                child: Center(
                  child: Text("Password", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontStyle: FontStyle.italic
                  ),),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: ElevatedButton(
                child: Text("Log in"),

                onPressed: (){
                  print("log in");
                },
              ),
            )
          ],
        ),
      ),



    );
  }
}

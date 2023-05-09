import 'package:flutter/material.dart';
import 'package:flutter_complete_demo/homepage.dart';

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
      theme: ThemeData(

        primarySwatch: Colors.blue,
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
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 225,
              child: Image.asset('assets/Dartmouth-College-Logo.png',
              ),
            ),
            Container(
              width: 150,
              height: 125,
              child: Image.asset('assets/hci-logo.png',
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 50, 
                  right: 50, 
                  bottom: 10
                ),
                child: TextFormField(
                  controller:_usernameController,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Input Username',
                    hintStyle: TextStyle(color: Colors.green),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 50, 
                  right: 50, 
                  bottom: 10
                ),
                child: TextFormField(
                  controller:_passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Input Password',
                    hintStyle: TextStyle(color: Colors.green),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.greenAccent
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Username: ' + _usernameController.text);
                  print('Password: ' + _passwordController.text);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                      ),
                    );
                },
                child: Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

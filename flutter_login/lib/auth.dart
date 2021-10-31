import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';
import 'package:flutter_login/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/img/Vehicle.png',
                width: 300,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'SELAMAT DATANG DI O-JOL',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff4B7BEC),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '      Silahkan masuk\njika anda memiliki akun',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xffC4C4C4),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(278, 42),
                    primary: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    )),
                child: Text(
                  'MASUK',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 18.5,
              ),
              Text(
                'Atau',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '             Silahkan daftar\njika anda belum memiliki akun',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xffC4C4C4),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(278, 42),
                    primary: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    )),
                child: Text(
                  'DAFTAR',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

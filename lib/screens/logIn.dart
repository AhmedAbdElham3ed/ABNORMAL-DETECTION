import 'package:flutter/material.dart';
import 'package:nevergiveup/screens/register.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 130.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/abnormal .png'),
                    fit: BoxFit.fill,
                  ),
                  Text("تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xff1E1E1E),
                          fontWeight: FontWeight.bold,
                          fontFamily: "FrutigerLTArabic")),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.account_circle),
                      labelStyle: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "FrutigerLTArabic"),
                      hintText: "اسم المستخدم",
                      hintStyle: TextStyle(
                          fontSize: 14.0, fontFamily: "FrutigerLTArabic"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "FrutigerLTArabic"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintStyle: TextStyle(
                              fontSize: 14.0, fontFamily: "FrutigerLTArabic"),
                          //Add th Hint text here.
                          hintText: "الرقم السري",
                          suffixIcon: Icon(Icons.lock))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text(
                      "هل نسيت كلمة المرور ؟",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "FrutigerLTArabic"),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.red.shade900,
                        onPressed: () {
                          //login
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "FrutigerLTArabic"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.red.shade900,
                        onPressed: () {
                          //register
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "تسجيل جديد",
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "FrutigerLTArabic"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

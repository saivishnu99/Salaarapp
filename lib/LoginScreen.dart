import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisiblityoff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/logo2.png",
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Welcome back",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Welcome back. Enter your credentials to access your account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(138, 144, 162, 1)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "hello@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: isVisiblityoff,
                    decoration: InputDecoration(
                      hintText: "password",
                      suffixIcon: InkWell(
                          onTap: () {
                            if (isVisiblityoff == true) {
                              setState(() {
                                isVisiblityoff = false;
                              });
                            } else {
                              setState(() {
                                isVisiblityoff = true;
                              });
                            }
                          },
                          child: isVisiblityoff == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                      alignment: Alignment.center,
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(89, 86, 233, 1),
                          borderRadius: BorderRadius.circular(15.5),
                          border: Border.all(
                            width: 1,
                          )),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

//scaffold -> [appbar,body]
//body ->  container()
// color: #292930;
// font-family: Euclid Circular B;
// font-size: 32px;
// font-style: normal;
// font-weight: 600;
// line-height: 130%; /* 41.6px */
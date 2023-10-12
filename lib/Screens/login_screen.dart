import 'package:flutter/material.dart';
import 'Home_screen.dart';
import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    "assets/Vector.png",
                    height: 72,
                    width: 72,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Welcome To Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Sign in to continue"),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      //hintText: 'your email',
                      labelText: 'email',
                      labelStyle: TextStyle(),
                      prefixIcon: Icon(Icons.email),

                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        //hintText: 'your email',
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.local_mall),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: Size(MediaQuery.of(context).size.width, 48),
                        foregroundColor: Colors.yellow,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(_)=>HomeScreen()), (route) => false);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                      Center(
                        child: Text("OR"),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          height: 1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton.icon(
                    icon: Icon(Icons.facebook),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    onPressed: () {},
                    label: Center(child: Text("Login in facebook")),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton.icon(
                    icon: Icon(Icons.account_circle_rounded),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    onPressed: () {},
                    label: Center(
                        child: Text(
                      "Login in Google",
                      style: TextStyle(),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have a account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (_) => Home(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

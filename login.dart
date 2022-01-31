
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hiddenpassword = true;
  bool _checkbox = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override


  Widget build(BuildContext context) {
    var sohan = MediaQuery.of(context).size.height;
    var sohan1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
       color: Colors.deepOrange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
            ),


            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text('Sign In',style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  fontSize: sohan1 / 10,
                                  color: Colors.black),)),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Please login to continue',style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  fontSize: sohan1 / 18,
                                  color: Colors.black54),)),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: emailController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: Colors.black,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  labelText: 'Email or phone number',
                                  labelStyle: TextStyle(color: Colors.black),
                                  hintText: 'Enter your email or phone number'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              maxLength: 8,
                              obscureText: hiddenpassword,
                              controller: passController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      hiddenpassword = !hiddenpassword;
                                    });
                                  },
                                  icon: Icon(
                                    hiddenpassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                labelText: 'Password',
                                labelStyle: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(color: Colors.black),
                                ),
                                hintText: 'Enter your password',
                                hintStyle: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.black,
                                    activeColor: Colors.green,
                                    value: _checkbox,
                                    onChanged: (value) {
                                      setState(() {
                                        _checkbox = !_checkbox;
                                      });
                                    }),
                                Text(
                                  'Remember me',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: sohan1 / 25,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => Forgetpass()));
                                },
                                child: Text(
                                  'Forgot password',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: sohan1 / 25,
                                        color: Colors.deepOrange),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: (Colors.deepOrange),
                                fixedSize: Size(320, 65),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {

                            },
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 29, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: sohan1 / 1,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: '''Don't have an account? ''',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign Up',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.deepOrange),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => SignUps()));
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
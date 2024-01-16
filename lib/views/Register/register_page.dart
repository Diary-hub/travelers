import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelers/views/Home/home.dart';
import 'package:travelers/views/Login/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 53, 54),
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.green.withOpacity(1.0),
                  Colors.green.withOpacity(1.0),
                  Colors.green.withOpacity(0.9),
                  Colors.green.withOpacity(0.7), // <-- change this opacity
                  Colors.green.withOpacity(0.01), // <-- change this opacity
                  // <-- you might need this if you want full transparency at the edge
                ],
                stops: const [
                  0.1,
                  0.5,
                  0.60,
                  0.70,
                  1.0
                ], //<-- the gradient is interpolated, and these are where the colors above go into effect (that's why there are two colors repeated)
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset("assets/images/login/one.jpg"),
          ),
          // BackdropFilter for blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.4),
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          Positioned(
            top: sH * 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: sW * 0.85,
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.person_3_outlined),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: sH * 0.02),
                  SizedBox(
                    width: sW * 0.85,
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.mail_outline),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: sH * 0.02),
                  SizedBox(
                    width: sW * 0.85,
                    child: const TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.lock_outline),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: sH * 0.02),
                  Container(
                    constraints: BoxConstraints.expand(
                        height: sH * 0.13, width: sW * 0.85),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: sW * 0.7,
                          height: sH * 0.09,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 168, 54)),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text("Create Account",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Oxygen",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeRedirect()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff244443),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                width: 1,
                                color: Colors.white10,
                              ),
                            ),
                            width: sW * 0.12,
                            height: sH * 0.07,
                            child: const Icon(
                              Icons.group_off_outlined,
                              color: Colors.white38,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 1,
                        width: sW * 0.35,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      const Text("OR",
                          style: TextStyle(
                              fontFamily: "Oxygen",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70)),
                      Container(
                        height: 1,
                        width: sW * 0.35,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(height: sH * 0.03),
                  Container(
                    constraints: BoxConstraints.expand(
                        height: sH * 0.1, width: sW * 0.87),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff244443),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                width: 1,
                                color: Colors.white10,
                              ),
                            ),
                            width: sW * 0.25,
                            height: sH * 0.1,
                            child: SvgPicture.asset(
                              "assets/icons/google.svg",
                              width: sW * 0.25,
                              height: sH * 0.06,
                            ),
                          ),
                        ),
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff244443),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                width: 1,
                                color: Colors.white10,
                              ),
                            ),
                            width: sW * 0.25,
                            height: sH * 0.1,
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              width: sW * 0.25,
                              height: sH * 0.08,
                            ),
                          ),
                        ),
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff244443),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                width: 1,
                                color: Colors.white10,
                              ),
                            ),
                            width: sW * 0.25,
                            height: sH * 0.1,
                            child: SvgPicture.asset(
                              "assets/icons/apple.svg",
                              width: sW * 0.25,
                              height: sH * 0.06,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(
                          height: sH * 0.1, width: sW * 0.87),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have? ",
                            style: TextStyle(
                                fontFamily: "Oxygen",
                                fontSize: 13,
                                color: Colors.white70),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              " Login",
                              style: TextStyle(
                                  fontFamily: "Oxygen",
                                  fontSize: 13,
                                  color: Color.fromARGB(185, 255, 168, 54)),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

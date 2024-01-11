import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelers/common/helper/oneLine.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            top: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Login",
                      style: TextStyle(
                          fontFamily: "Oxygen",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: sH * 0.02),
                  const SizedBox(
                    width: 350,
                    child: TextField(
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
                  const SizedBox(
                    width: 350,
                    child: TextField(
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
                    constraints:
                        const BoxConstraints.expand(height: 100, width: 350),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 280,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 168, 54)),
                            onPressed: () {},
                            child: const Text("Login",
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
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff244443),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                width: 1,
                                color: Colors.white10,
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: const Icon(
                              Icons.qr_code_outlined,
                              color: Colors.white38,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 40,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

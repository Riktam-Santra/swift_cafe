import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swift_cafe/screens/home_screen/home_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool keyboardNotVisible = true;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0) {
      setState(() {
        keyboardNotVisible = false;
      });
    } else {
      setState(() {
        keyboardNotVisible = true;
      });
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/res/media/images/coffee-beans.jpg"),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 207, 123, 75), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromRGBO(207, 123, 75, 0.51), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 71),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.23),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 12,
                      sigmaY: 12,
                    ),
                    child: ClipRect(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Spacer(),
                          const SizedBox(
                            height: 70,
                            child: Image(
                              image:
                                  AssetImage("lib/res/media/images/logo.png"),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            child: keyboardNotVisible
                                ? Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Swift",
                                          style: GoogleFonts.raleway().copyWith(
                                              color: Colors.white,
                                              fontSize:
                                                  keyboardNotVisible ? 64 : 40),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Café",
                                          style: GoogleFonts.raleway().copyWith(
                                              color: Colors.white,
                                              fontSize: 40),
                                        ),
                                      ),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Swift ",
                                          style: GoogleFonts.raleway().copyWith(
                                              color: Colors.white,
                                              fontSize:
                                                  keyboardNotVisible ? 64 : 40),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Café",
                                          style: GoogleFonts.raleway().copyWith(
                                              color: Colors.white,
                                              fontSize: 40),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "\"Latte but never late\"",
                                style: GoogleFonts.raleway().copyWith(
                                    color:
                                        const Color.fromRGBO(171, 171, 171, 1),
                                    shadows: [
                                      const Shadow(color: Colors.white)
                                    ],
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 27.5),
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  keyboardNotVisible = false;
                                });
                              },
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintText: "User Name",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 27.5),
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  keyboardNotVisible = false;
                                });
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          keyboardNotVisible
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50, left: 60, right: 60),
                                  child: ElevatedButton(
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen(),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      elevation: 4.0,
                                      minimumSize: const Size(88.0, 45.0),
                                      padding: const EdgeInsets.all(0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    child: Ink(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color.fromARGB(255, 77, 43, 26),
                                          Color.fromARGB(255, 167, 116, 90),
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.0)),
                                      ),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            minWidth: 88.0, minHeight: 45.0),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                          keyboardNotVisible
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 60, right: 60),
                                  child: InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(33),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.5),
                                        child: Text(
                                          "Signup",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                )
                              : Container(),
                          keyboardNotVisible
                              ? TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: const Text("Privacy Policy"),
                                )
                              : Container(),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

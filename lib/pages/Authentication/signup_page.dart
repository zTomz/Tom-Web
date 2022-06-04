// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/Authentication/signin_page.dart';

import '../../programs/authentication.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/message.dart';
import '../../widgets/side_bar.dart';
import '../../widgets/under_title.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController EMAIL = TextEditingController();
  TextEditingController PASSWORD = TextEditingController();
  TextEditingController REPEAT_PASSWORD = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _style = ElevatedButton.styleFrom(
        primary: Theme.of(context).colorScheme.secondary);
    final BoxDecoration _decoration = BoxDecoration(
      color: Colors.grey.withOpacity(0.6),
      borderRadius: BorderRadius.circular(1.25),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SideBar(),
      endDrawer: SideBar(),
      body: Builder(builder: (context) {
        return Column(
          children: [
            MyAppBar(),
            underTitle(title: "Authentication"),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            ),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Theme.of(context).highlightColor),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: EMAIL,
                            autocorrect: false,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  Theme.of(context).colorScheme.secondary,
                              focusColor: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.75),
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: PASSWORD,
                            obscureText: true,
                            autocorrect: false,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  Theme.of(context).colorScheme.secondary,
                              focusColor: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.75),
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: REPEAT_PASSWORD,
                            obscureText: true,
                            autocorrect: false,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  Theme.of(context).colorScheme.secondary,
                              focusColor: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.75),
                              hintText: "Repeat password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      ElevatedButton(
                        style: _style,
                        onPressed: () {
                          if (EMAIL.text == "") {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Ohh!",
                                  text: "You must enter an email.",
                                  firstColor: Colors.redAccent,
                                  secondColor: Colors.red,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }
                          if (PASSWORD.text == "") {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Ohh!",
                                  text: "You must enter a password.",
                                  firstColor: Colors.redAccent,
                                  secondColor: Colors.red,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }
                          if (REPEAT_PASSWORD.text == "") {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Ohh!",
                                  text: "You must enter an repeat password.",
                                  firstColor: Colors.redAccent,
                                  secondColor: Colors.red,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }
                          if (PASSWORD.text != REPEAT_PASSWORD.text) {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Ohh!",
                                  text:
                                      "The password is not equal to the repeat password.",
                                  firstColor: Colors.redAccent,
                                  secondColor: Colors.red,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }

                          final SIGN_UP = signUp(EMAIL.text, PASSWORD.text);
                          if (SIGN_UP == true) {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Hey!",
                                  text: "Sucsesfuly created an account.",
                                  firstColor: Colors.greenAccent,
                                  secondColor: Colors.green,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }

                          if (SIGN_UP == "[firebase_auth/email-already-in-use]") {
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: BottomMessage(
                                  title: "Ohh!",
                                  text: "The email is already in use.",
                                  firstColor: Colors.redAccent,
                                  secondColor: Colors.red,
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }
                          setState(
                            () {
                              EMAIL.text = "";
                              PASSWORD.text = "";
                              REPEAT_PASSWORD.text = "";
                            },
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2.5,
                            width: (MediaQuery.of(context).size.width / 5),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: _decoration,
                          ),
                          Text(
                            "or",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.withOpacity(0.8),
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                          ),
                          Container(
                            height: 2.5,
                            width: (MediaQuery.of(context).size.width / 5),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: _decoration,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                final provider =
                                    Provider.of<GoogleSignInProvider>(context,
                                        listen: false);
                                provider.googleSigniIn;
                              },
                              icon: SvgPicture.asset("assets/ico/google.svg"))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

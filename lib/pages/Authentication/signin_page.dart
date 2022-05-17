// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/Authentication/signup_page.dart';

import '../../programs/authentication.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/side_bar.dart';
import '../../widgets/under_title.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  
  String EMAIL = "";
  String PASSWORD = "";
  @override
  Widget build(BuildContext context) {
    final ButtonStyle _style =
        ElevatedButton.styleFrom(primary: Theme.of(context).colorScheme.secondary);
    final BoxDecoration _decoration = BoxDecoration(
      color: Colors.grey.withOpacity(0.6),
      borderRadius: BorderRadius.circular(1.25),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SideBar(),
      endDrawer: SideBar(),
      body: Column(
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
                        const Text("Want to create an account?"),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          ),
                          child: Text(
                            "Sign up",
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
                          controller: emailController,
                          onChanged: (String text) => setState(() {
                            EMAIL = text;
                          }),
                          autocorrect: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.secondary,
                            focusColor:
                                Theme.of(context).colorScheme.secondary.withOpacity(0.75),
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
                          controller: passwordController,
                          onChanged: (String text) => setState(() {
                            PASSWORD = text;
                          }),
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.secondary,
                            focusColor:
                                Theme.of(context).colorScheme.secondary.withOpacity(0.75),
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
                const SizedBox(height: 30),
                Column(
                  children: [
                    ElevatedButton(
                      style: _style,
                      onPressed: () {
                        if (EMAIL == "") {
                          return;
                        }
                        if (PASSWORD == "") {
                          return;
                        }
                        final SIGNIN = signIn(EMAIL, PASSWORD);
                        setState(
                          () {
                            emailController.text = "";
                            passwordController.text = "";
                            EMAIL = "";
                            PASSWORD = "";
                          },
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Text(
                          "Sign in",
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
      ),
    );
  }
}

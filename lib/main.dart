import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/home_page.dart';
import 'package:website/pages/settings_page.dart';
import 'package:website/programs/authentication.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Tom',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff007FFF),
          accentColor: const Color(0xff7D83FF),
          highlightColor: const Color(0xff06D6A0),
          backgroundColor: const Color(0xffD4DCFF),
          scaffoldBackgroundColor: const Color(0xffD4DCFF),
          fontFamily: "Roboto",
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(197, 0, 0, 0),
              fontWeight: FontWeight.w900,
              letterSpacing: 3,
            ),
          ),
        ),
        home: const SettingsPage(),
      ),
    );
  }
}

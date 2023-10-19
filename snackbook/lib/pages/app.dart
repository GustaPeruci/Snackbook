import 'package:flutter/material.dart';
import 'package:snackbook/colors.dart';
import 'package:snackbook/pages/receita.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'profile.dart';
import 'editProfile.dart';

ThemeData myTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Tajawal',
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(color: kSbGreen900),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kSbGreen900),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kSbGreen400),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 8.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      primary: kSbGreen900,
    ),
  ),
);

class SnackBookApp extends StatelessWidget {
  const SnackBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBook',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/signup': (BuildContext context) => const SignupPage(),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/editProfile': (BuildContext context) => const EditProfilePage(),
        '/': (BuildContext context) => const HomePage(),
        '/receita': (BuildContext context) => const ReceitaPage(),
      },
      theme: myTheme,
    );
  }
}

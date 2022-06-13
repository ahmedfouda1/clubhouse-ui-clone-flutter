import 'package:clubhouse_clone/constants.dart';
import 'package:clubhouse_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clubhouse clone',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:kBackgroundColor ,
        ),
        scaffoldBackgroundColor: kBackgroundColor ,
        primaryColor: Colors.white,
        accentColor: kAccentColorGreen ,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}

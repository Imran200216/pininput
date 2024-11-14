import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pininput/screens/get_started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(
          // Set Google Fonts theme here
          Theme.of(context).textTheme,
        ),
      ),
      home: const GetStartedScreen(),
    );
  }
}
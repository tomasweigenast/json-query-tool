// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_query_tool/views/paste_json_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light, 
          primary: Colors.indigo, 
          onPrimary: Colors.white, 
          secondary: Colors.amber, 
          onSecondary: Colors.black, 
          error: Colors.red, 
          onError: Colors.white, 
          background: Colors.white, 
          onBackground: Colors.black, 
          surface: Colors.white, 
          onSurface: Colors.black
        ),
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(GoogleFonts.robotoCondensed(fontSize: 18)),
            fixedSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder())            
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(GoogleFonts.robotoCondensed(fontSize: 18)),
            fixedSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder())            
          )
        )
      ),
      home: const PasteJsonView(),
    );
  }
}
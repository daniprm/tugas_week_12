import 'package:flutter/material.dart';
import 'bio_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AboutPage());
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          brightness: Brightness.dark,
          textTheme: GoogleFonts.robotoMonoTextTheme()),
      home: const BioPage(),
    );
  }
}

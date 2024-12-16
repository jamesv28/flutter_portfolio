import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb({super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  @override
  Widget build(BuildContext context) {
    return Text("Home",
        style: GoogleFonts.manrope(color: Colors.white, fontSize: 30.0));
  }
}

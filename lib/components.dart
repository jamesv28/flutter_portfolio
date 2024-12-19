import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        style: isSelected
            ? GoogleFonts.rethinkSans(
                color: Colors.white,
                fontSize: 30.0,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent)
            : GoogleFonts.rethinkSans(
                color: Colors.white,
                fontSize: 28.0,
              ),
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.albertSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class SansText extends StatelessWidget {
  final String text;
  final double size;
  const SansText(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.albertSans(
        fontSize: size,
      ),
    );
  }
}

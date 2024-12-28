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

class TextForm extends StatelessWidget {
  final String heading;
  final double width;
  final String hintText;
  final int maxLines;
  const TextForm(
      {super.key,
      required this.heading,
      required this.width,
      required this.hintText,
      required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.teal,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.tealAccent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: heading,
            labelStyle: const TextStyle(
              color: Colors.teal,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.albertSans(
              fontSize: 14.0,
            )),
      ),
    );
  }
}

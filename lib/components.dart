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

class AnimatedCardWeb extends StatefulWidget {
  final String imagePath;
  final String? text;
  final BoxFit? fit;
  final bool? reverse;

  const AnimatedCardWeb(
      {super.key, required this.imagePath, this.text, this.fit, this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(
              color: Colors.tealAccent,
            )),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit,
              ),
              const SizedBox(
                height: 10,
              ),
              if (widget.text != null) SansBold(widget.text!, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

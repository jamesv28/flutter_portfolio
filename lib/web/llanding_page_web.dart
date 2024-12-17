import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Work"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer()
          ],
        ),
      ),
      body: const CircleAvatar(
        radius: 103.0,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("assets/images/james.jpeg"),
        ),
      ),
    );
  }
}

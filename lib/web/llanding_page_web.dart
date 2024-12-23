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
    var deviceHeight = MediaQuery.of(context).size.height;
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
      body: ListView(
        children: [
          SizedBox(
            height: deviceHeight - 56,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: const SansBold("Hello I am", 15),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SansBold("James Volmert", 55),
                      const SansText("Front-End Developer", 30.0),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: 15.0,
                          ),
                          SansText("james.volmert@gmail.com", 20.0)
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(
                            width: 15.0,
                          ),
                          SansText("(901) 497-8991)", 20.0)
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.pin),
                          SizedBox(
                            width: 15.0,
                          ),
                          SansText("Denver, Colorado", 20.0)
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 147.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 143.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 140.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/james.jpeg"),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: deviceHeight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/web.jpg",
                      height: deviceHeight / 1.7,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SansBold("About Me", 52),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const SansText(
                        "hello i am James Volmert. I specialize in front-end development",
                        15),
                    const SansText(
                        "I specialize in vue and react development", 15),
                    const SansText(
                        "Also beginning to work on htybrid app development",
                        15),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: const EdgeInsets.all(7.0),
                          child: const SansText("Flutter", 15),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: const EdgeInsets.all(7.0),
                          child: const SansText("Javscript", 15),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: const EdgeInsets.all(7.0),
                          child: const SansText("Android", 15),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: const EdgeInsets.all(7.0),
                          child: const SansText("iOS", 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // third section
          SizedBox(
            height: deviceHeight / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/webL.png",
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

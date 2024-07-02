import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI4 extends StatelessWidget {
  const UI4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ui5img1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 36, bottom: 12),
              child: Text(
                '''Let's go!'''.toUpperCase(),
                style: const TextStyle(
                    color: Color(0xffEA8246), fontSize: 16, letterSpacing: 0.1),
              ),
            ),
            const Row(
              children: [
                Expanded(
                    flex: 213,
                    child: Divider(color: Color(0xffE5E4DF), height: 1)),
                SizedBox(width: 12),
                Expanded(
                    flex: 44,
                    child: Divider(color: Color(0xffE5E4DF), height: 1)),
                SizedBox(width: 12),
                Expanded(
                  flex: 25,
                  child: Divider(color: Color(0xffE5E4DF), height: 1),
                ),
                SizedBox(width: 56),
              ],
            ),
            Text(
              "Hello,",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 45, color: const Color(0xff31543e), height: 0),
            ),
            Text(
              "Leonard,",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 45, color: Colors.black, height: 0),
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
              padding: EdgeInsets.all(24),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.black,
              ),
              child: Text(
                'Explore'.toUpperCase(),
                style: TextStyle(color: Colors.white, letterSpacing: 1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

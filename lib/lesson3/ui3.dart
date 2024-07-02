import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI3 extends StatelessWidget {
  const UI3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Column(
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Welcome Back',
                style: GoogleFonts.roboto(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam va boshqalar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 24),
            InputWidget('Username, Email & Phone Number'),
            const SizedBox(height: 8),
            InputWidget('Password'),
            Container(
              margin: const EdgeInsets.only(right: 32, top: 16),
              alignment: Alignment.centerRight,
              child: const Text(
                "Forgot Password ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.symmetric(horizontal: 32),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
                color: Color(0xffF89AEE),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xffF89AEE),
                          Color(0x00C4C4C4),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Or Sign up With',
                    style: TextStyle(
                        color: Color(0xff555252),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF89AEE),
                          Color(0x00C4C4C4),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleIcon("assets/images/ui4img1.png"),
                const SizedBox(width: 12),
                CircleIcon("assets/images/ui4img2.png"),
                const SizedBox(width: 12),
                CircleIcon("assets/images/ui4img3.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget InputWidget(String text) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 1,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: Color(0x00000000))
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xff666161),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2),
      ),
    );

Widget CircleIcon(String iconData) => Container(
      height: 56,
      width: 56,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffECE9EC),
        shape: BoxShape.circle,
        // image: DecorationImage(
        //   image: AssetImage(iconData),
        // ),
        border: Border.all(
          color: const Color(0xffF89AEE),
          width: 0.4,
        ),
      ),
      child: Image.asset(
        iconData,
      ),
    );

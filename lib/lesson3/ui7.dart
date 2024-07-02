import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI7 extends StatelessWidget {
  const UI7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 36,
                ),
              ),
            ),
            const IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(width: 24),
                  CircleAvatar(
                    radius: 36,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSoedPP9xMhUd0P1mvbzjsD5M7P2HMfqn5dDdZ_oRPfurfx-P9TyYbw7NmaWhwNGCVztLroiPxX9-JRNPc",
                    ),
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tom Andrew',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'tomandrew662@gmial.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'MANAGE',
                            style: TextStyle(
                                color: Color(0xffFF2626),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 18),
                          Text(
                            'REMOVE',
                            style: TextStyle(
                                color: Color(0xffFF2626),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffFF2626),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: Divider(
                color: Color(0xff3E3D3D),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Item(text: 'Your Channel', iconData: Icons.abc),
                    const Item(text: 'Incognitive Mode', iconData: Icons.abc),
                    const Item(text: 'Youtube Studio', iconData: Icons.abc),
                    const Divider(color: Color(0xff3E3D3D)),
                    const Item(text: 'Premium Subsciption', iconData: Icons.abc),
                    const Item(text: 'Time Watched', iconData: Icons.abc),
                    const Item(text: 'Your Data on Youtube', iconData: Icons.abc),
                    const Divider(color: Color(0xff3E3D3D)),
                    const Item(text: 'Settings', iconData: Icons.abc),
                    const Item(text: 'Help & Feedback', iconData: Icons.abc),
                    const Divider(color: Color(0xff3E3D3D)),
                    const ItemText(text: 'switch account'),
                    const ItemText(text: 'sign out all accounts'),
                    const ItemText(text: 'sign out'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Privacy Policy - Terms & conditions',
                style: GoogleFonts.roboto(
                  color: const Color(0xffB6B6B6),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String text;
  final IconData iconData;

  const Item({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(width: 36),
        Text(
          text,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class ItemText extends StatelessWidget {
  final String text;

  const ItemText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: Color(0xffFF2626),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

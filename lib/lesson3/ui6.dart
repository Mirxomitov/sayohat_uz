import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI6 extends StatelessWidget {
  const UI6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.black45,
                Colors.black45,
                Colors.black,
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Text(
                    'Shorts',
                    style: GoogleFonts.roboto(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("assets/images/ui6img1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 24),
                        Item(Icons.thumb_up, '218 K'),
                        const SizedBox(height: 16),
                        Item(Icons.thumb_down, 'Disklike'),
                        const SizedBox(height: 16),
                        Item(Icons.comment_sharp, '2.3 K'),
                        const SizedBox(height: 16),
                        Item(Icons.block, 'Block'),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSoedPP9xMhUd0P1mvbzjsD5M7P2HMfqn5dDdZ_oRPfurfx-P9TyYbw7NmaWhwNGCVztLroiPxX9-JRNPc"),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Avarind",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        Text(
                          "216k Subscribers",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text(
                        'Subscibe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Item(IconData iconData, String text) => Column(
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 10,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (_, index) {

                    return CircleAvatar(child: Image.asset('assets/'),);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

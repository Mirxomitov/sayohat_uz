import 'package:flutter/material.dart';

class Lesson4 extends StatefulWidget {
  const Lesson4({super.key});

  @override
  State<Lesson4> createState() => _Lesson4State();
}

class _Lesson4State extends State<Lesson4> {
  @override
  void initState() {
    print('initState');
    super.initState();
  }

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: textController,
                decoration: const InputDecoration(
                    hintText: 'search', enabledBorder: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        color: Colors.red,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 4,
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        // InkWell() widget tapni aniqlash uchun
                        textController.text = index.toString();
                      },
                      child: Container(
                        height: 200,
                        color: Colors.lime,
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 4,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

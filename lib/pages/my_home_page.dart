import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.name,
    required this.kesibi,
    required this.nomeri,
    required this.gmail,
  });

  final String name;
  final String kesibi;
  final String nomeri;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff056c5c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                color: Color(0xffF7F9F9),
                fontSize: 42,
              ),
            ),
            Text(
              '$kesibi Developer',
              style: const TextStyle(color: Color(0xffF7F9F9), fontSize: 28),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.5,
              indent: 80,
              endIndent: 80,
            ),
            const SizedBox(height: 10),
            Container(
              width: 375,
              height: 53,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.phone_outlined,
                      size: 30, color: Color(0xff056c5c)),
                  const SizedBox(width: 10),
                  Text(
                    '+ 996 $nomeri ',
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xff056c5c)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 375,
              height: 53,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.email_outlined,
                    size: 28,
                    color: Color(0xff056c5c),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    gmail,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff056c5c),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'my_home_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameCtl = TextEditingController();
  final _kesibiCtl = TextEditingController();
  final _nomeriCtl = TextEditingController();
  final _gmailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 250, 250),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Аты-Жөнү'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч аты-жөнүңүздү толтуруңуз.';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                TextFormField(
                  controller: _kesibiCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Кесиби'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч кесибиңизди жазыңыз...';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                TextFormField(
                  controller: _nomeriCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Телефон номер'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч телефон номериңизди жазыңыз...';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                TextFormField(
                  controller: _gmailCtl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Gmail аккаунт'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Сураныч gmail почтаңызды жазыңыз...';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(
                              name: _nameCtl.text,
                              kesibi: _kesibiCtl.text,
                              nomeri: _nomeriCtl.text,
                              gmail: _gmailCtl.text,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Сураныч бул жерди толтуруңуз')));
                      }
                    },
                    child: const Text(
                      'Сактоо',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

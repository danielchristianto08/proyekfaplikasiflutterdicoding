import 'package:flutter/material.dart';

class myLogin extends StatefulWidget {
  const myLogin({super.key});

  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  String? username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          const Text('Username'),
          TextField(
            decoration: InputDecoration(
              labelText: 'Masukkan Username',
              hintText: 'Username',
            ),
            onChanged: (String? value) {
              setState(() {
                username = value;
              });
            },
          ),
          const Text('Password'),
          TextField(
            decoration: InputDecoration(
              labelText: 'Masukkan Password',
              hintText: 'Password',
            ),
            onChanged: (String? value) {
              setState(() {
                password = value;
              });
            },
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text('Berhasil Login'),
                      );
                    });
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class myLogin extends StatefulWidget {
  const myLogin({super.key});

  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  bool _isLoading = false;
  var _username = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : Container(),
          const SizedBox(
            height: 24,
          ),
          const Text('Username'),
          TextField(
            controller: _username,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              //labelText: 'Masukkan Username',
              hintText: 'Username',
            ),
            // onChanged: (String? value) {
            //   setState(() {
            //     username = value;
            //   });
            // },
          ),
          const Text('Password'),
          TextField(
            controller: _password,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              //labelText: 'Masukkan Password',
              hintText: 'Password',
            ),
            // onChanged: (String? value) {
            //   setState(() {
            //     password = value;
            //   });
            // },
          ),
          ElevatedButton(
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text('Berhasil Login'),
                      );
                    });
                setState(() {
                  _isLoading = true;
                });
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}

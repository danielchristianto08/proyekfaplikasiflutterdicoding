import 'package:flutter/material.dart';
import 'package:proyekfaplikasiflutterdicoding/login.dart';
import 'package:proyekfaplikasiflutterdicoding/model/movie.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;
  const DetailMovie({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(movie.imageasset, width: 500, height: 500),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(
                  'Judul Film ${movie.judulfilm}',
                  style: TextStyle(fontFamily: 'Lato', fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.access_alarm),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.access_alarm),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(movie.deskripsi),
              ),
              Container(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return myLogin();
                  })));
                },
                child: const Text(
                  'Menuju Halaman Login',
                  style: TextStyle(fontFamily: 'Lato', fontSize: 16),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyekfaplikasiflutterdicoding/detailmovie.dart';
import 'package:proyekfaplikasiflutterdicoding/model/movie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      ),
      body: ListView.builder(
        itemCount: MovieList.length,
        itemBuilder: (context, index) {
          final Movie movie = MovieList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMovie(movie: movie);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(movie.imageasset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movie.judulfilm,
                            style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            movie.lokasi,
                            style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

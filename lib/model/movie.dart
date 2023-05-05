class Movie {
  String judulfilm;
  int tahun;
  String imageasset;
  String deskripsi;
  String lokasi;

  Movie({
    required this.judulfilm,
    required this.tahun,
    required this.imageasset,
    required this.deskripsi,
    required this.lokasi,
  });
}

var MovieList = [
  Movie(
    judulfilm: 'Harry Potter',
    tahun: 2008,
    imageasset: 'images/gambar1.jpg',
    deskripsi:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo debitis minus assumenda corrupti rem ratione, totam non, quisquam eius nisi, molestiae quae ipsum facilis esse nihil optio? Voluptatem, quo nulla.',
    lokasi: 'Palembang',
  ),
  Movie(
    judulfilm: 'Horror',
    tahun: 2004,
    imageasset: 'images/gambar2.jpg',
    deskripsi:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo debitis minus assumenda corrupti rem ratione, totam non, quisquam eius nisi, molestiae quae ipsum facilis esse nihil optio? Voluptatem, quo nulla.',
    lokasi: 'Medan',
  ),
  Movie(
    judulfilm: 'Spiderman',
    tahun: 2007,
    imageasset: 'images/gambar3.png',
    deskripsi:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo debitis minus assumenda corrupti rem ratione, totam non, quisquam eius nisi, molestiae quae ipsum facilis esse nihil optio? Voluptatem, quo nulla.',
    lokasi: 'Jakarta',
  ),
  Movie(
    judulfilm: 'Tom And Jerry',
    tahun: 2005,
    imageasset: 'images/gambar4.jpg',
    deskripsi:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo debitis minus assumenda corrupti rem ratione, totam non, quisquam eius nisi, molestiae quae ipsum facilis esse nihil optio? Voluptatem, quo nulla.',
    lokasi: 'Surabaya',
  ),
  Movie(
    judulfilm: 'Zombie',
    tahun: 2012,
    imageasset: 'images/gambar5.jpg',
    deskripsi:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo debitis minus assumenda corrupti rem ratione, totam non, quisquam eius nisi, molestiae quae ipsum facilis esse nihil optio? Voluptatem, quo nulla.',
    lokasi: 'Semarang',
  ),
];

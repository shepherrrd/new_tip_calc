import 'package:flutter/material.dart';
import '../util/movie.dart';
import 'movies.dart';

class MovieDetailsthumbnail extends StatelessWidget {
  final String thumbnail;
  const MovieDetailsthumbnail({Key, key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            Icon(
              Icons.play_circle_outlined,
              size: 100,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        )
      ],
    );
  }
}

class MovieDetailsWithHeaderPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsWithHeaderPoster({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0].toString()),
          SizedBox(
            width: 16,
          ),
          Expanded(child: MovieDetailsHeader(movie: movie))
        ],
      ),
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "${movie.year} ${movie.genre}".toUpperCase(),
        style: TextStyle(color: Colors.cyan),
      ),
      Text(
        "${movie.title}",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
      ),
      Text.rich((TextSpan(
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          children: <TextSpan>[
            TextSpan(text: movie.plot),
            TextSpan(text: "   more...", style: TextStyle(color: Colors.blue))
          ])))
    ]);
  }
}

class MovieDetailsCasts extends StatelessWidget {
  final Movie movie;
  const MovieDetailsCasts({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          HorizontalLine(),
          MovieField(field: "Cast", value: movie.actors),
          MovieField(field: "Directors", value: movie.director),
          MovieField(field: "Awards", value: movie.awards),
          HorizontalLine(),
          MovieDetailsExtraPosters(posters: movie.images)
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;
  const MovieField({Key? key, required this.field, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$field: ",
          style: TextStyle(
              color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w300),
        ),
        Expanded(
          child: Text(value,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300)),
        )
      ],
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;
  const MoviePoster({
    Key? key,
    required this.poster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderradius = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderradius,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 155,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}

class MovieDetailsExtraPosters extends StatelessWidget {
  final List<String> posters;
  const MovieDetailsExtraPosters({
    Key? key,
    required this.posters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18,
        ),
        Text(
          "More Movie Posters".toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            color: Colors.black26,
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: ((context, index) => SizedBox(
                  width: 8,
                )),
            itemCount: posters.length,
            itemBuilder: ((context, index) => ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(posters[index]))),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}

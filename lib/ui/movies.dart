// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_string_interpolations

import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spark/util/hex.dart';

import '../util/movie.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Movie> movieList = Movie.getMovies();

    final List movies = [
      "Titanic",
      "Blade Runner",
      "Rambo",
      "The Avengers",
      "Avatar",
      "I Am Legend",
      "300",
      "The Wolf of Wall Street",
      "Interstellar",
      "Game of Thrones",
      "Vikings"
    ];
    final Color grad_blue = Hexcolor("33ccff");

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(children: [
              movieCard(movieList[index], context),
              Positioned(child: movieImage(movieList[index].images[0])),
            ]);
            // return Card(
            //   elevation: 5.5,
            //   color: Colors.white,
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       child: Container(
            //           width: 200,
            //           height: 200,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: NetworkImage(movieList[index].images[0]),
            //               fit: BoxFit.cover,
            //             ),
            //             borderRadius: BorderRadius.circular(13),
            //           ),
            //           child: Text(movieList[index].title[0])),
            //     ),
            //     trailing: Text("..."),
            //     title: Text(movieList[index].title),
            //     subtitle: Text("${movieList[0].title}"),
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => MovieListViewDetails(
            //                     movieName: movieList.elementAt(index).title,
            //                     movie: movieList[index],
            //                   )));
            //     },
            //     // onTap: () => debugPrint(movies.elementAt(index)),
            //   ),
            // );
          }),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieListViewDetails(
                      movieName: movie.title, movie: movie)));
        }),
        child: Container(
          margin: EdgeInsets.only(left: 60),
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: Card(
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 3.0, left: 54.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        Text(
                          "Rating : ${movie.imdbRating}/10",
                          style: mainTextStyle(),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Released: ${movie.released}",
                            style: mainTextStyle()),
                        Text(movie.runtime, style: mainTextStyle()),
                        Text(movie.rated, style: mainTextStyle()),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  TextStyle mainTextStyle() {
    return TextStyle(
      fontSize: 15,
      color: Colors.grey.shade500,
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  imageUrl ?? "https://images.app.goo.gl/yjATVAhd6pgzp37Q8"),
              fit: BoxFit.cover)),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  const MovieListViewDetails(
      {super.key, required this.movieName, required this.movie});
  final String movieName;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Movies"),
          backgroundColor: Colors.blueGrey.withOpacity(0.9)),
      body: ListView(
        children: [
          MovieDetailsthumbnail(thumbnail: movie.images[0]),
          MovieDetailsWithHeaderPoster(movie: movie)
        ],
      ),
      // body: Center(
      //   child: Container(
      //     child: ElevatedButton(
      //       onPressed: (() {
      //         Navigator.pop(context);
      //       }),
      //       child: Text("Go Back ${movie.director}"),
      //     ),
      //   ),
      // )
    );
  }
}

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
        children: [MoviePoster(poster: movie.images[0].toString())],
      ),
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
//End movie app

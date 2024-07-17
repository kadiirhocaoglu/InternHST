import 'package:demo_application/service/movie_model.dart';
import 'package:flutter/material.dart';

class CustomCard extends Card {
  CustomCard._privateConstructor();
  
  static final CustomCard shared = CustomCard._privateConstructor();
  
  Card MovieCard(Results movie) {
    Card card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image(
              image: NetworkImage("https://image.tmdb.org/t/p/w500${movie!.posterPath}") ?? AssetImage("assets/ic_hst_logo.png"),
            ),
            title: Text(movie!.originalTitle!),
            subtitle: Text(movie.overview!),
            trailing: Text(movie.releaseDate!),
          )  
        ],
      ),
    );
    return card;
  } 

}
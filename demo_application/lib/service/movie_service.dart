import 'dart:io';

import 'package:demo_application/service/movie_model.dart';
import 'package:demo_application/widget/custom_appbar.dart';
import 'package:demo_application/widget/custom_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class MovieService extends StatefulWidget {
  const MovieService({super.key});

  @override
  State<MovieService> createState() => _MovieServiceState();
}

class _MovieServiceState extends State<MovieService> {

  @override
  void initState() {
    super.initState();
    getMovie();
  }
  List<Results>? _movieItems;  
  final dio = Dio();
  void getMovie() async{
    final response = await dio.get("https://api.themoviedb.org/3/discover/movie?api_key=1d1edb7e851ea80f04f50e09c44f58f2");
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      final movieModel = MovieModel.fromJson(response.data);
      final result =  movieModel.results;
      if (result != null){
        
        setState(() {
            _movieItems = result;
        });
      
      }
    }
    else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.shared.StarterAppBar(context),
      body: ListView.builder(
        itemCount: _movieItems?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard.shared.MovieCard(_movieItems![index]);
        },
      ),
    );
  }
}
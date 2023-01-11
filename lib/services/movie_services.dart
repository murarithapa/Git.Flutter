// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttersample/domain/i_movie.dart';
import 'package:fluttersample/models/movie.dart';
import 'package:fluttersample/providers/dio_providerd.dart';




class MovieService {
 static final dio = Dio();

  static Future<Either<String, List<Movie>>> getMovieCategory({required String apiPath}) async {
    try{
      final response = await dio.get(apiPath);
      final data = (response.data['results'] as List).map((e) => Movie.fromJson(e)).toList();
      return Right(data);
    }on DioError catch(err){
      return Left(err.message);
    }
    // TODO: implement getMovieCategory
  }

}



enum Categories{
  popular,
 toplodaded,
 upcoming,
}





class Movie{

  final String title;
  final String poster_path;
  final String background_path;
  final int id;
  final String overview;
  final String release_date;
  final String vote_avrage;

  const Movie({
    required this.id,
    required this.title,
    required this.background_path,
    required this.overview,
  required this.poster_path,
  required this.release_date,
  required this.vote_avrage,
});

  factory Movie.fromJson(Map<String,dynamic>json){
    return Movie(
      id: json['id'],
        title:json['title'],
        background_path: json['background_path'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        release_date: json['release_date'],
        vote_avrage: json['vote'],
    );
  }
}
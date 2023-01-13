import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttersample/models/movie.dart';
import 'package:fluttersample/presentation/widgets/tab_bar_widgets.dart';



class HomePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {
    FlutterNativeSplash.remove();
    return DefaultTabController(
      length: 3,
      child: Scaffold(

          appBar: AppBar(



            toolbarHeight: 20.h,
            centerTitle:true,
            title:  Text('Movie Tmdb',

              style: TextStyle(color: Colors.red.shade500, fontSize: 25.sp),),
            actions: [
              IconButton(
                  onPressed: (){

                  }, icon: Icon(Icons.search, size: 30.w,))

            ],
            bottom: TabBar(
                tabs: [
                  Tab(text: 'Popular',icon: Icon(Icons.home),),
                  Tab(text: 'UpComing',icon: Icon(Icons.star)),
                  Tab(text: 'TopRated',icon: Icon(Icons.person)),
                  Tab(text: 'TopRated',icon: Icon(Icons.search_rounded)),
                ]),
          ),


          body: TabBarView(

            children: [
              TabBarWidgets(Categories.popular,'1'),
              TabBarWidgets(Categories.upcoming,'2'),
              TabBarWidgets(Categories.top_rated,'3'),

              // TabBarWidgets(Categories.New_movies,'4'),
            // SpinKitRotatingCircle(color: Colors.red),


            ],


          )

      ),


    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class HomePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading:BackButton(),
            toolbarHeight: 100.h,
            // centerTitle:true,
            title:  Text('Movie Tmdb',

              style: TextStyle(color: Colors.pink.shade500, fontSize: 25.sp),),
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
                ]),
          ),
          body: TabBarView(
            children: [
              Center(child:Text('hi there')),
              Center(child:Text('hello')),
              Center(child:Text('hey')),
            ],

          )
      ),

    );
  }
}
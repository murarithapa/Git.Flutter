import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ProfileApp",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Profile App'),
      ),
      body: Column(
        children:[
          SizedBox(height: 10,),
          Center(child:Image.asset('assets/image/book.jpg',height: 250,width: 250,)),
          SizedBox(height: 10,),
          Text("Name : Murari Thapa",style:TextStyle(fontSize: 24,color:Colors.red,fontWeight:FontWeight.bold )),//text
          SizedBox(height: 5),
          Text('Address: Kathmandu,Nepal',style:TextStyle(fontSize:19),),
          SizedBox(height: 5),
          Text('Email:Murarithapa4@gmail.com'),
          SizedBox(height: 100),
          Text('Develop By :Murari Thapa'),



        ],
      ),
    ),

  ));
}



// import 'package:flutter/material.dart';



// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttersample/view/homepage.dart';
//
// void main(){
//
//   runApp(Home());
//
// }
// class Home extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360,640),
//       minTextAdapt: true,
//       builder: (context , child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: child,
//         );
//       },
//       child:  HomePage(),
//     );
//   }
// }
// import 'package:sampleflutter/models/bank.dart';
// import 'package:sampleflutter/models/cars.dart';
// import 'package:sampleflutter/models/inheritance.dart';
//
//
// extension adding on List<int>{
//
//   int total (){
//     return this.reduce((value, element) => value + element);
//   }
//
// }
//
//
// void main(){
//
//   List<int> some=[11,22,33,44];
//   print(some.total());


// final sometxt = 'hello';
// print(sometxt.duplicateText());


// final  per = Person();
// per.runall();

// const data=[
//   {
//     'id':1,
//     'title':'ram'
//   },
//   {
//     'id':2,
//
//   }
// ];
//
// final d = data[1]['title'] ?? 'no-title';
// print (d);





// String? image;
//
// print (image);
//
//
// int? a;
// int b =90;
//
// if (b>89){
//   a=90;
// }
//
// final sum=a! + 9090;

// final dog1= dog();
// final cat1= cat();
// dog1.eat();
// cat1.sit();



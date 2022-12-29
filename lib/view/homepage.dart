// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     print(height);
//     print(width);
//     return Scaffold(
//       backgroundColor: Colors.black,
//
//       appBar: AppBar(
//         // backgroundColor: Colors.purple,
//         backgroundColor: Colors.red,
//         // backgroundColor: Color.fromRGBO(20, 90, 100, 0.5),
//         // elevation: 20,
//         title: Text('Hi Murari,',style: TextStyle(color: Colors.blue),),
//         // toolbarHeight: 200,
//         actions: [
//           Icon(Icons.search, color: Colors.white, size: 30,),
//           SizedBox(width: 10,),
//           Icon(Icons.notifications_active_outlined, color: Colors.white, size: 30,),
//
//
//         ],
//       ),
//       body: Container(
//         // margin: EdgeInsets.only(top: 20,left: 20),
//         // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
//         padding: EdgeInsets.all(100),
//         margin: EdgeInsets.all(50),
//         height: 500.h,
//         width: 600.h,
//         color: Colors.white,
//         // child: Text('HI STOOPID',style: TextStyle(fontSize: 20),),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 height: 100 ,
//                 width: 100,
//                 color: Colors.black,
//                 padding: EdgeInsets.only(top: 40),
//                 child:
//
//                 Text('HELLO1',style: TextStyle(color: Colors.white) ,textAlign: TextAlign.center,)
//             ),
//             Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.grey,
//                 padding: EdgeInsets.only(top: 40),
//                 child:
//
//                 Text('BYE',style: TextStyle(color: Colors.white) ,textAlign: TextAlign.center,)
//             ),
//             Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.blueGrey,
//                 padding: EdgeInsets.only(top: 40),
//                 child:Image.asset('assets/image/book.jpg',fit: BoxFit.cover,),
//
//
//             ),
//
//           ],
//         ),
//
//       ),
//     );
//   }
// }
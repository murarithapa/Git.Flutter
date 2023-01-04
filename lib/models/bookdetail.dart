import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_ui/models/book.dart';
// import 'package:color/color.dart';


// import 'constant/color.dart';
import 'book.dart';


class BookDetail extends StatelessWidget {
  final Book book;
  BookDetail(this.book);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Image.network(book.imageUrl, height: 350.h, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(book.title,style: TextStyle(
                          fontSize: 21.sp, fontWeight: FontWeight.w500
                      ),),
                      Column(
                        children: [
                          Text(book.rating),
                          SizedBox(height: 5.h,),
                          Text(book.genres, style: TextStyle(
                              fontSize: 16.sp, color: Colors.yellow
                          ),)
                        ],
                      )
                    ],
                  ),
                  Text(book.detail, textAlign: TextAlign.justify, style: TextStyle(
                      color: Colors.grey, fontSize: 18.sp
                  ),),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                //maximumSize: Size(width, height)
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                            ),
                            onPressed: () {},
                            child: Text('Read Book', style: TextStyle(fontSize: 18.sp,color: Colors.white),)
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            onPressed: () {},
                            child: Text('More info', style: TextStyle(fontSize: 18.sp, color: Colors.grey),)
                        )
                      ],
                    ),
                  )
                ],
              ),

            )
          ],
        )
    );
  }
}


class MoreBookDetail extends StatelessWidget {
  final Book morebook;
  MoreBookDetail(this.morebook);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Image.network(morebook.imageUrl, height: 350.h, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(morebook.title,style: TextStyle(
                          fontSize: 21.sp, fontWeight: FontWeight.w500
                      ),),
                      Column(
                        children: [
                          Text(morebook.rating),
                          SizedBox(height: 5.h,),
                          Text(morebook.genres, style: TextStyle(
                              fontSize: 16.sp, color: Colors.orange
                          ),)
                        ],
                      )
                    ],
                  ),
                  Text(morebook.detail, style: TextStyle(
                      color: Colors.grey, fontSize: 18.sp
                  ),),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:Colors.brown,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                //maximumSize: Size(width, height)
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                            ),
                            onPressed: () {},
                            child: Text('Read Book', style: TextStyle(fontSize: 18.sp,color: Colors.white),)
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            onPressed: () {},
                            child: Text('More info', style: TextStyle(fontSize: 18.sp, color: Colors.grey),)
                        )
                      ],
                    ),
                  )
                ],
              ),

            )
          ],
        )
    );
  }
}
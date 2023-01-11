
// import 'package:flutter/cupertino.dart';/
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
            minimumSize: Size(100.w, 50.h)
      ),
        onPressed: (){

        },
        child: const Text('common button')
    );
  }
}

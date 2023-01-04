import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttersample/models/book.dart';
// import 'package:fluttersample/constants/colors.dart';
// import 'package:fluttersample/models/book.dart';
import 'package:fluttersample/providers/counter_provider.dart';
import 'package:fluttersample/view/homepage.dart';
// import 'package:fluttersample/view/fyp.dart';
// import 'package:fluttersample/view/fyp.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constant/color.dart';
import 'models/todo2.dart';
// import 'models/bookdetail.dart';
// import 'models/bookdetail.dart';





void main (){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: appColor
      )
  );
  runApp(ProviderScope(child: Home()));
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 866),
      minTextAdapt: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: TODOAPP(),
    );
  }
}


class Count extends StatefulWidget {
  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  // final String name;
  @override
  Widget build(BuildContext context) {
    print('build  start');
    return Scaffold(
      body:  SafeArea(
        child: Consumer(
            builder: (context, ref, child) {
              final number = ref.watch(countStateProvider);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${number}', style: TextStyle(fontSize: 50),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                           // ref.read(counterProvider).addNumber();
                            ref.read(countStateProvider.notifier).state++;
                          },
                          child: Text('add')
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          onPressed: () {
                            // ref.read(counterProvider).minusNumber();
                            ref.read(countStateProvider.notifier).state--;
                          },
                          child: Text('minus')
                      )
                    ],
                  )
                ],
              );
            }
        ),
      ),

    );
  }
}

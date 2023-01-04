// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../models/todo.dart';
// import '../providers/todo_provider.dart';
//
//
//
// class HomePage extends ConsumerWidget {
//
//   final todoController = TextEditingController();
//   @override
//   Widget build(BuildContext context, ref) {
//     final todoData = ref.watch(todoProvider);
//     return Scaffold(
//         body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: todoController,
//                     onFieldSubmitted: (val){
//                       if(val.isEmpty){
//                         ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                         ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                                 duration: Duration(seconds: 1),
//                                 content: Text('add some todo')
//
//                             )
//
//                         );
//                       }else{
//                         final newTodo = Todo(
//                             dateTime: DateTime.now().toString(),
//                             todo: val
//                         );
//                         ref.read(todoProvider.notifier).addTodo(newTodo);
//                         todoController.clear();
//                       }
//                     },
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                       border: OutlineInputBorder(),
//                       focusedBorder: InputBorder.none,
//                       fillColor: Colors.white,
//                       filled: true,
//                       hintText: 'add some todo',
//                       // suffixIcon: Icon(Icons.add_business_rounded),
//                       // prefixIcon: Icon(Icons.accessibility)
//                       icon: IconButton(onPressed: (){},icon: Icon(Icons.edit)),
//
//
//                     ),
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//
//                         itemCount: todoData.length,
//                         itemBuilder: (context, index){
//                           final todo = todoData[index];
//                           return ListTile(
//                             leading: Icon(Icons.add_business_rounded),
//                             title: Text(todo.todo),
//                             subtitle: Text(todo.dateTime),
//                             trailing:Container(
//                               child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                       children: const  [
//
//                                   // IconButton(onPressed:(){}, icon: (Icons.edit)),
//                                   // IconButton(onPressed: (){}, icon:(Icons.delete)),
//
//                                 ],
//
//                             ) ,
//
//
//
//                           );
//
//                         }
//                     ),
//                   ),
//                 ],
//               ),
//             )
//         )
//     );
//   }
// }
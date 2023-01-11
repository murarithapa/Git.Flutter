import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../common/common_button.dart';
import '../constants/app_sizes.dart';
import '../models/todo.dart';
import '../providers/todo_provider.dart';



class HomePage extends ConsumerWidget {

  final todoController = TextEditingController();
  final todo1Controller = TextEditingController();
  @override
  Widget build(BuildContext context, ref) {
    final todoData = ref.watch(todoProvider);
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _buildText('Title1'),
                  _buildText('Title2'),
                  _buildText('Title3'),
                  gapH10,
                  TextFormField(
                    controller: todoController,
                    onFieldSubmitted: (val){
                      if(val.isEmpty){
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 1),
                                content: Text('add some todo')
                            )
                        );
                      }else{
                        final newTodo = Todo(
                          dateTime: DateTime.now().toString(),
                          todo: val
                        );
                        ref.read(todoProvider.notifier).addTodo(newTodo);
                        todoController.clear();
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(),
                      focusedBorder: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'add some todo',
                      // suffixIcon: Icon(Icons.add_business_rounded),
                      // prefixIcon: Icon(Icons.accessibility)
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: todoData.length,
                        itemBuilder: (context, index){
                          DateTime now = DateTime.parse(todoData[index].dateTime);
                          String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
                        final todo = todoData[index];
                         return Padding(
                           padding: const EdgeInsets.symmetric(vertical: 10),
                           child: ListTile(
                             leading: Icon(Icons.add_business_rounded),
                             title: Text(todo.todo),
                             subtitle: Text(formattedDate),
                             trailing: Container(
                               width: 100.w,
                               child: Row(
                                 children: [
                                   IconButton(
                                       onPressed: (){
                                         Get.defaultDialog(
                                             title: 'Update Post',
                                             content:TextFormField(
                                               controller: todo1Controller..text = todo.todo,
                                               onFieldSubmitted: (val){
                                                 if(val.isEmpty){
                                                   ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                   ScaffoldMessenger.of(context).showSnackBar(
                                                       SnackBar(
                                                           duration: Duration(seconds: 1),
                                                           content: Text('add some todo')
                                                       )
                                                   );
                                                 }else{
                                                   final newTodo = Todo(
                                                       dateTime: DateTime.now().toString(),
                                                       todo: todo1Controller.text.trim()
                                                   );
                                                   Navigator.of(context).pop();
                                                   ref.read(todoProvider.notifier).updateTodo(index, newTodo);
                                                   todo1Controller.clear();
                                                 }
                                               },
                                               decoration: InputDecoration(
                                                 contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                 border: OutlineInputBorder(),
                                                 focusedBorder: InputBorder.none,
                                                 fillColor: Colors.white,
                                                 filled: true,
                                                 hintText: 'update some todo',
                                               ),
                                             ),
                                             actions: [
                                               TextButton(
                                                   onPressed: (){
                                                     Navigator.of(context).pop();
                                                   },
                                                   child: Text('cancel')),
                                             ]
                                         );
                                       }, icon: Icon(Icons.edit)
                                   ),
                                   IconButton(
                                       onPressed: (){
                                         Get.defaultDialog(
                                           title: 'Hold On',
                                           content: Text('Are you sure you want to remove this'),
                                           actions: [
                                             TextButton(
                                                 onPressed: (){
                                                   Navigator.of(context).pop();
                                                   ref.read(todoProvider.notifier).removeTodo(todo);
                                                 }, child: Text('yes')),
                                             TextButton(
                                                 onPressed: (){
                                                   Navigator.of(context).pop();
                                                 },
                                                 child: Text('no')),
                                           ]
                                         );
                                       }, icon: Icon(Icons.delete)
                                   ),

                                 ],
                               ),
                             ),
                           ),
                         );
                        }
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }

  Text _buildText(String label) =>  Text(label, style: TextStyle(color: Colors.purple, fontSize: 25.sp),);
}

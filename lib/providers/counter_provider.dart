import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider((ref) => CounterProvider());
final person = Provider((ref) => 'hari shyam');
final countStateProvider = StateProvider((ref) => 90);

class CounterProvider extends ChangeNotifier {

  int number = 0;

  void addNumber(){
    number++;
    notifyListeners();
  }

  void minusNumber(){
    number--;
    notifyListeners();
  }



}
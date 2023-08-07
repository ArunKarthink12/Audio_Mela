import 'package:get/get.dart';

import '../view/homemain.dart/homescreencontent.dart';
import '../view/homemain.dart/libraryscreen.dart';
import '../view/homemain.dart/searchscreen.dart';

class MultiScreenController extends GetxController {
  bool playBook = true;
  var currentindex = 0;

  List pages = [HomeScreenContent(), SearchScreen(), LibraryScreen()];
}

import 'package:get/get.dart';

class BottomBarController extends GetxController {
  final _selectedIndex = 0.obs;

  getIndex() => _selectedIndex.value;
  setIndex(index) => _selectedIndex.value = index;
}

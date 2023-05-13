import 'package:get/get.dart';

class DrawerControll extends GetxController {
  var isDrawerOpen = false.obs;

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }
}

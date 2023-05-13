// ignore: file_names
import 'package:aappii/controller/mainController.dart';
import 'package:aappii/utils/const.dart';
import 'package:aappii/view/screens/debtScreen.dart';
import 'package:aappii/view/screens/homePage.dart';
import 'package:aappii/view/screens/alarmScreen.dart';
import 'package:aappii/view/screens/getSuppliers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            color: mainColor,
            backgroundColor: white,
            height: 50,
            animationDuration: const Duration(
              milliseconds: 600,
            ),
            items: [
              Icon(Icons.home, size: 30, color: white),
              Icon(Icons.money_off, size: 30, color: white),
              Icon(Icons.person_add, size: 30, color: white), 
              Icon(Icons.alarm, size: 30, color: white),
            ],
            index: controller.currentIndexNav.value,
            onTap: (selectedIndex) {
              controller.currentIndexNav.value = selectedIndex;
            }),
        body: getSelectedWidget(index: controller.currentIndexNav.value),
      );
    }));
  }
}

Widget getSelectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = HomePage();
      break;
    case 1:
      widget = const DebtScreen();
      break;
    case 2:
      widget = const GetSuppliersScreen();
      break;
    case 3:
      widget = const AlarmScreen();
      break;
    default:
      widget = HomePage();
      break;
  }
  return widget;
}

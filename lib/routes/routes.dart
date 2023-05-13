import 'package:aappii/view/screens/homePage.dart';
import 'package:aappii/view/screens/mainScreen.dart';
import 'package:aappii/view/screens/postSuppliers.dart';
import 'package:aappii/view/screens/purchasesScreen.dart';
import 'package:aappii/view/screens/salesScreen.dart';
import 'package:get/get.dart';

class AppRoutes {
  //init Route
  static const main = Routes.mainScreen;
  //getpage[]
  static final routes = [
    GetPage(name: Routes.mainScreen, page: () => MainScreen()),
    GetPage(name: Routes.welcome, page: () => HomePage()),
    GetPage(name: Routes.pruchasesScreen, page: ()=> PurchasesScreen()),
    GetPage(name: Routes.slaesScreen, page: ()=> SalesScreen() ),
    GetPage(name: Routes.postSuppliersScreen, page: ()=> PostSuppliersScreen() ),
  ];
}

class Routes {
  static const mainScreen = '/mainScreen';
 static const welcome = '/WelcomeScreen';
 static const pruchasesScreen = '/pruchasesScreen';
 static const slaesScreen = '/slaesScreen';
 static const postSuppliersScreen = '/postSuppliers';

}

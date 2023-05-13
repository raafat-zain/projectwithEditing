import 'package:aappii/controller/drawerController.dart';
import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/card_items.dart';
import 'package:aappii/view/widgets/carousel_items.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:aappii/controller/homeController.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ProductController controller = Get.put(ProductController());
  final CarouselController carouselController = CarouselController();
  //final ZoomDrawerController controllerD = Get.put(ZoomDrawerController());
  final DrawerControll drawerController = Get.put(DrawerControll());
 // ZoomDrawerController controllerD = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        body: Column(children: [
          Stack(
            children: [
              Expanded(
                
                child: Container(
                  height:200,
                  // MediaQuery.of(context).size.height-590,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: const BorderRadius.only(
                      //  bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 90,left:20 ),
                  //   child: Container(
                  //     child: Text_u(text: 'Pharma Care', fontsize: 50, color: white, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                
                                
                              },
                              icon: const Icon(Icons.menu_sharp),
                              color: white,
                              iconSize: 30,
                            ),
                            SizedBox(
                              height: 45,
                              width: 280,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search_sharp,
                                    color: mainColor,
                                  ),
                                  filled: true,
                                  fillColor: white,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: white, width: 1.0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: "Search you're looking for",
                                  labelStyle: TextStyle(color: grey),
                                  hintText: 'enter to search',
                                  hintStyle: TextStyle(color: mainColor),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: grey),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: white),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                          padding: const EdgeInsets.only(left: 60,top:30),
                          child: Align(
                  alignment: Alignment.topLeft,
                  child: Text_u(
                      overflow: TextOverflow.clip,
                      text: 'Pharma_Care',
                      fontsize: 35,
                      color: white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Pacifico',)),
                        ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -10,
                right: 30,
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(360),
                          topRight: Radius.circular(360),
                        ),
                        color: white,
                      ),
                    ),
                    
                       Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          color: white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              
                    
                              isScrollControlled: true,
                              barrierColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext bc) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height-200,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Container(
                                        color: grey.withOpacity(0.09),
                                        
                                 
                                        width: MediaQuery.of(context).size.width,
                                      )),
                                      Positioned(
                                          top: 0,
                                          right: 30,
                                          child: Container(
                                            width: 60,
                                            height: 190,
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(29)),
                                            child: Column(
                                              children: [
                                                IconButton(
                                                  onPressed: () => Get.back(),
                                                  icon: const Icon(
                                                    Icons.cancel_outlined,
                                                  ),
                                                  color: mainColor,
                                                  iconSize: 30,
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                IconButton(
                                                  onPressed: () =>
                                                      Get.toNamed('/slaesScreen'),
                                                  icon: const Icon(
                                                    Icons
                                                        .store_mall_directory_rounded,
                                                  ),
                                                  color: mainColor,
                                                  iconSize: 30,
                                                ),
                                                IconButton(
                                                  onPressed: () => Get.toNamed(
                                                      '/pruchasesScreen'),
                                                  icon: const Icon(
                                                    Icons.add_shopping_cart_sharp,
                                                  ),
                                                  color: mainColor,
                                                  iconSize: 30,
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.local_pharmacy_rounded),
                          color: mainColor,
                          iconSize: 30,
                        ),
                      ),
                    
                  ],
                ),
              )
            ],
          ),
          //  Padding(
          //    padding: const EdgeInsets.symmetric(horizontal:15,vertical:100 ),
          //    child:
          const SizedBox(
            height: 10,
          ),

          //..............................................
          //  Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: Align(
          //       alignment: Alignment.topLeft,
          //       child: Text_u(
          //           overflow: TextOverflow.clip,
          //           text: 'any thing',
          //           fontsize: 25,
          //           color: Colors.black,
          //           fontWeight: FontWeight.w500)),
          // ),
          // const SizedBox(
          //   height: 30,
          // ),
          //..............................................
          CarouselSliderItems(),
          const SizedBox(
            height: 10,
          ),
          CardItems(),

          // )
        ]),
      ),
    );
  }
}

import 'package:aappii/controller/homeController.dart';
import 'package:aappii/model/product.dart';
import 'package:aappii/utils/const.dart';
import 'package:aappii/view/screens/productDetails.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);
  final ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      } else {
        return Expanded(
          
          child: GridView.builder(
              itemCount: controller.productList.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 2,
                maxCrossAxisExtent: MediaQuery.of(context).size.width,
              ),
              itemBuilder: (context, index) {
                return buildCardItems(
                  image: controller.productList[index].image,
                  price: controller.productList[index].price,
                  rating: controller.productList[index].rating,
                  title: controller.productList[index].title,
                  description: controller.productList[index].description,
                  ontap: () {
                    Get.to(ProductDetails(product: controller.productList[index],
                    
                    ));
                  },
                );
              }),
        );
      }
    });
  }
}

Widget buildCardItems({
  required String image,
  required double price,
  required Rating rating,
  required String title,
  required String description,
  required Function() ontap,
}) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ]),
            ),
          
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            
            onTap: ontap,
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: white),
              child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 140,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        image,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: Container(
                      // color: black,
                      height: 140,
                      width: 200,
                      child:
                          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text_u(
                              text: title,
                              fontsize: 20,
                              color: black,
                              fontWeight: FontWeight.w900,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.ltr,
                            ),
                            Text_u(
                              text: description,
                              fontsize: 15,
                              color: grey,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.ltr,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 9),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text_u(
                                        overflow: TextOverflow.clip,
                                        text: "\$${price}",
                                        fontsize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: Text_u(
                                          text: '${rating.rate} ★',
                                          fontsize: 15.5,
                                          color: white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

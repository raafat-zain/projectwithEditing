import 'package:aappii/model/product.dart';
import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.circle,
                      color: mainColor,
                      size: 50,
                    ),
                    IconButton(
                        onPressed: Get.back,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                          color: white,
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Icon(
                      Icons.circle,
                      color: mainColor,
                      size: 50,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 30,
                          color: white,
                        )),
                  ],
                ),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.network(product.image),
            ),
           const SizedBox(
              height: 40,
            ),
            
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:50 ),
                 child: Text_u(
                  text: product.title,
                  fontsize: 20,
                  color: black,
                  fontWeight: FontWeight.w900,
                  overflow: TextOverflow.fade,
                  textDirection: TextDirection.ltr,
              ),
               ),
           
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8, bottom: 50),
              child: Text_u(
                text: product.description,
                fontsize: 15,
                color: grey,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.fade,
                textDirection: TextDirection.ltr,
              ),
            ),
            
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text_u(
                          text: 'Amont=${product.price} ',
                          fontsize: 20,
                          color: white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text_u(
                          text: 'Expiry date::${product.price}/${product.rating.rate}',
                          fontsize: 20,
                          color: white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                 
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text_u(
                          text: 'Price=${product.price} ',
                          fontsize: 20,
                          color: white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text_u(
                          text: 'Barcode::${product.id}',
                          fontsize: 20,
                          color: white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                 
                ],
              ),
            
          ],
        ),
      ),
    ));
  }
}

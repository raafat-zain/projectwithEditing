import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class GetSuppliersScreen extends StatelessWidget {
  const GetSuppliersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>Get.toNamed('/postSuppliers'), backgroundColor: mainColor,child: Icon(Icons.add,),),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return buildSuppliers();
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: grey,
                thickness: 1,
              );
            },
            itemCount: 3));
  }
}

Widget buildSuppliers() {
  return SizedBox(
    width: double.infinity,
    height: 120,
    child: Row(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(180),
              ),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    "https://th.bing.com/th/id/OIP.cThQeGlYsVaL26V5MfVbYAHaE7?pid=ImgDet&rs=1",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
       //   mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.1,
            ),
            Text_u(
              overflow:TextOverflow.fade ,
              text: 'Name:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
              
            ),
             Text_u(
              overflow:TextOverflow.fade ,
              text: 'company:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
              
            ),
            SizedBox(
              height: 2.1,
            ),
            Text_u(
              overflow:TextOverflow.clip ,
              text: 'number:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
            ),
            Text_u(
              overflow:TextOverflow.clip ,
              text: 'title:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        
    
    // )],
]    ),
  );
}
  
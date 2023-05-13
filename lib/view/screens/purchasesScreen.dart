import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';


class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Center(
      child: Container( 
        height: 30,
        width: 90,
        color: black,
        child: Text_u(text: 'PurchasesScreen', fontsize: 40, color: mainColor, fontWeight: FontWeight.w900,overflow: TextOverflow.visible, )),
                
    ),
    );
  }
}

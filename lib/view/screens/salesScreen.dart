import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text_u(text: 'SalesScreen', fontsize: 40, color: mainColor, fontWeight: FontWeight.w900,overflow:TextOverflow.visible),
    ),
    );
  }
}

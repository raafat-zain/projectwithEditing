import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class DebtScreen extends StatelessWidget {
  const DebtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("add dept if you want"),
        ),
      ),
    );
  }
}

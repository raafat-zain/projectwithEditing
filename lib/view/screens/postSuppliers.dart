import 'package:aappii/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostSuppliersScreen extends StatelessWidget {
   PostSuppliersScreen({Key? key}) : super(key: key);
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Form(child: 
          Column(
            children: [
               Row(mainAxisAlignment: MainAxisAlignment.start,
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
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 50),
                 child: Column(
                  children: [
                    TextFormField(
                         
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This must not be empty';
                            }
                          },
                         keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mainColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            border: OutlineInputBorder(
                              
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: mainColor),
                                borderRadius: BorderRadius.circular(60)
                                ),
                                
                          ),
                          
                        ),
    
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                         
                          validator: (value) {
                            if (value!.isEmpty ) {
                              return 'This must not be empty';
                            }
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mainColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                            prefixIcon: Icon(Icons.add),
                            labelText: 'Company',
                            hintText: 'Enter name your company',
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: mainColor),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
          ),
                         TextFormField(
                         
                          validator: (value) {
                            if (value!.isEmpty ) {
                              return 'This must not be empty';
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mainColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                            prefixIcon: Icon(Icons.format_list_numbered),
                            labelText: 'number',
                            hintText: 'Enter name your number',
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: mainColor),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
          ),            TextFormField(
                         
                          validator: (value) {
                            if (value!.isEmpty ) {
                              return 'This must not be empty';
                            }
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mainColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                            prefixIcon: Icon(Icons.title),
                            labelText: 'title',
                            hintText: 'Enter name your title',
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: mainColor),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
          )
                  ],
                 ),
               )
               ],
          )),
        ),
      
    );
  }
}

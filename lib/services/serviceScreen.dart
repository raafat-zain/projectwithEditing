import 'package:aappii/model/product.dart';
import 'package:aappii/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ServiceScreen {
  static Future<List<Product>> getProduct() async {
    var url = Uri.parse('$BaseURL/products');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}

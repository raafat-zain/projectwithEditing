import 'package:aappii/model/product.dart';
import 'package:aappii/services/serviceScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  var isLoading = true.obs;
  
  @override
  onInit() {
    super.onInit();
    getProducts();
  }

  Future getProducts() async {
    var products = await ServiceScreen.getProduct();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}

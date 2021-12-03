import 'package:get/state_manager.dart';
import 'package:islootech_task/models/product_model.dart';
import 'package:islootech_task/services/remote_services.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use

  List<Product> allproducts = <Product>[].obs; 
  var isLoading = true.obs; 

@override
void onInit() {
    fetchProduct();
    print(allproducts.length);
    super.onInit();
  }

  void fetchProduct () async {
    isLoading(true);
     await RemoteServices.fetchproducts();
  }
}
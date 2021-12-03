import 'dart:convert';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:islootech_task/controllers/product_controller.dart';
import 'package:islootech_task/models/product_model.dart';

class RemoteServices {
  static var client = http.Client();
  static ProductController controller = Get.find();

  static Future fetchproducts()  async{
   var response = await client.get(Uri.parse('https://fakestoreapi.com/products?limit=7'));
   var jsonData = jsonDecode(response.body);

   if (response.statusCode == 200)
   {
     for(var u in jsonData){
       Product singleproduct = Product(price: u['price'],title: u['title'],description: u['description'],id: u['id'],image: u['image']);
       controller.allproducts.add(singleproduct);
       controller.isLoading(false);
     }
     
   }

  }
}
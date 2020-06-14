import 'dart:convert';
import 'dart:developer';
import 'package:ddaliveryflutter/const/const.dart';
import 'package:ddaliveryflutter/model/api/product_entity.dart';
import 'package:http/http.dart' as http;

class ProductApi {

  factory ProductApi.getInstance() => ProductApi._();

  ProductApi._();

  Future<ProductEntity> getAllProduct() async {
    http.Response response = await http.get(Const.webConst.buildWithBaseUrl("product/all"));
    if (response.statusCode == 200) {

      var b = json.decode(response.body);
      var a =ProductEntity().fromJson(b);
      log("success");
      log(b["code"]);
      return a;
    } else {
      log("fail");
      log("url : ${Const.webConst.buildWithBaseUrl("product/all")}");
      log("status code : ${response.statusCode.toString()}");
      throw Exception("실패");
    }
  }
}

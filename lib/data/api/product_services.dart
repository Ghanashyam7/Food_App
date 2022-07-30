import 'dart:convert';
import 'package:foodapp/model/article.dart';
import 'package:http/http.dart' as http;

class ProductServices{
 final client = http.Client();
 Future<List<Products>> getProducts() async{
  final uri = Uri.parse("http://mvs.bslmeiyu.com/api/v1/products/popular");
  final response =await client.get(uri);

  Map<String, dynamic> json = jsonDecode(response.body);
  print(json);

  List<dynamic> body = json["products"];
  List<Products> product = body.map((dynamic item) => Products.fromJson(item)).toList();
  return product;
 }
}
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http_example/json_place_holder/json_place_holder.dart';
import 'package:http/http.dart' as http;
import 'package:http_example/model/post_model.dart';

abstract class JsonPlaceHolderViewModel extends State<JsonPlaceHolder> {
  final baseUrl = "https://jsonplaceholder.typicode.com/";
List<PostModel> postModel=[];
  Future<void> getPost() async {
    final url = Uri.parse("$baseUrl/post");
    final response = await http.get(url);
    switch (response.statusCode) {
      case HttpStatus.ok:
      final jsonbody= jsonDecode(response.body);
      if(jsonbody is List) postModel=jsonbody.map((e) => PostModel.fromJson(e)).toList().cast<PostModel>();
        
      
        break;
      default:
    }
  }
}

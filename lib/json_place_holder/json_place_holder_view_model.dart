import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http_example/json_place_holder/json_place_holder.dart';
import 'package:http/http.dart' as http;

abstract class JsonPlaceHolderViewModel extends State<JsonPlaceHolder> {
  final baseUrl = "https://jsonplaceholder.typicode.com/";

  Future<void> getPost() async {
    final url = Uri.parse("$baseUrl/post");
    final response = await http.get(url);
    switch (response.statusCode) {
      case HttpStatus.ok:
      final jsonbody= jsonDecode(response.body);
      if(jsonbody is List){
        
      }
        break;
      default:
    }
  }
}

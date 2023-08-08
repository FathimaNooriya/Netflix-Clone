import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'number_model/number_model.dart';

String numberMeaing = "";

TextEditingController numberController = TextEditingController();
Future<NumberModel> getNumberMeaning(int number) async {
  final response =
      await http.get(Uri.parse("http://numbersapi.com/$number?json"));
  print(response.body);
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  print(bodyAsJson);
  final data = NumberModel.fromJson(bodyAsJson);
  return data;
}

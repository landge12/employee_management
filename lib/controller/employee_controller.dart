import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/ModelClass.dart';

class EmployeeController extends GetxController {
  // Observables
  var postList = <ModelClass>[].obs;
  var filteredList = <ModelClass>[].obs;
  var isLoading = true.obs;

  final searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getPostApi(); // Fetch data when controller is initialized
  }

  // Fetch data from API
  Future<void> getPostApi() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://669b3f09276e45187d34eb4e.mockapi.io/api/v1/employee'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        postList.value = List<ModelClass>.from(data.map((item) => ModelClass.fromJson(item)));
        filteredList.value = postList; // Initially, show all data
      }
    } finally {
      isLoading(false);
    }
  }

  // Search filter logic
  void filterSearchResults(String query) {
    if (query.isEmpty) {
      filteredList.value = postList; // Show all if search is empty
    } else {
      filteredList.value = postList.where((employee) => employee.id.toString() == query).toList();
    }
  }
}

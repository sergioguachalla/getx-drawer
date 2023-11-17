import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySearchController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  RxString searchText = ''.obs;
  RxBool isSearchClicked = false.obs;

  List<String> items = [
    'Maria',
    'Jose',
    'Ronaldo',
    'Carlos',
    'Zenon',
    'Adela',
    'Pedro',
    'Rene',
    'Daria',
    'Malena',
    'Cindhy',
  ];

  RxList<String> filteredItems = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredItems.assignAll(items);
  }

  void onSearchChanged(String value) {
    searchText.value = value;
    filterItems();
  }

  void filterItems() {
    if (searchText.value.isEmpty) {
      filteredItems.assignAll(items);
    } else {
      filteredItems.assignAll(items
          .where((item) => item.toLowerCase().contains(searchText.value.toLowerCase()))
          .toList());
    }
  }

  void toggleSearch() {
    isSearchClicked.value = !isSearchClicked.value;
    if (!isSearchClicked.value) {
      // If the user closes the search bar, reset the filter
      searchController.clear();
      filterItems();
    }
  }




}

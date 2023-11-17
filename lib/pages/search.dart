import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_controller.dart';



class Search extends GetView<MySearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Obx(
              () => controller.isSearchClicked.value
              ? Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              controller: controller.searchController,
              onChanged: controller.onSearchChanged,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                hintText: 'Search..',
              ),
            ),
          )
              : const Text('Search Bar'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: controller.toggleSearch,
            icon: Icon(controller.isSearchClicked.value ? Icons.close : Icons.search),
          )
        ],
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: controller.filteredItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.filteredItems[index]),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/employee_controller.dart';
import 'detail_sreen.dart';

class EmployeeList extends StatelessWidget {
  final EmployeeController employeeController = Get.put(EmployeeController());

  EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Employee List',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 5),
            child: TextField(
              onChanged: (value) {
                employeeController.filterSearchResults(value);
              },
              controller: employeeController.searchController,
              decoration: InputDecoration(
                hintText: 'Search here by ID....',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (employeeController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (employeeController.filteredList.isEmpty) {
                return const Center(child: Text('No employees found.'));
              } else {
                return ListView.builder(
                  itemCount: employeeController.filteredList.length,
                  itemBuilder: (context, index) {
                    final employee = employeeController.filteredList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(employee: employee),
                          ),
                        );
                      },
                      child: Card(
                        child: ListTile(
                          leading: Text(employee.id.toString()),
                          title: Text(employee.name.toString()),
                        ),
                      ),
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

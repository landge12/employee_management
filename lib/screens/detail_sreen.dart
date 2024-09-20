import 'package:flutter/material.dart';
import '../models/ModelClass.dart';

class DetailScreen extends StatelessWidget {
  final ModelClass employee;

  const DetailScreen({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          employee.name!,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue.shade400,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('ID'),
                subtitle: Text(employee.id.toString()),
              ),
              const Divider(), // Separator between items

              ListTile(
                leading: Icon(Icons.person),
                title: Text('Name'),
                subtitle: Text(employee.name ?? 'N/A'),
              ),
              const Divider(),

              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text(employee.emailId ?? 'N/A'),
              ),
              const Divider(),

              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Mobile No.'),
                subtitle: Text(employee.mobile ?? 'N/A'),
              ),
              const Divider(),

              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Address'),
                subtitle: Text('${employee.district}, ${employee.state}, ${employee.country}'),
              ),
              const Divider(),

              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Created At'),
                subtitle: Text(employee.createdAt ?? 'N/A'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

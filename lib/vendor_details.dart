import 'package:flutter/material.dart';

class VendorDetailsPage extends StatelessWidget {
  final String title;

  VendorDetailsPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Vendor Details'),
      ),
    );
  }
}

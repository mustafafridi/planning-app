import 'package:flutter/material.dart';


String selectedCity = '';
String selectedBudget = '';
String selectedCapacity = '';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedCity;
  String selectedBudget;
  String selectedCapacity;

  _FilterScreenState()
      : selectedCity = '',
        selectedBudget = '',
        selectedCapacity = '';

  List<String> cities = ['Lahore', 'Karachi', 'Islamabad'];
  List<String> budgets = ['1000', '1500', '2000', '2500'];
  List<String> capacities = ['0-50', '50-100', '100-150', '150-200'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'City:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              buildFilterOptions(cities, selectedCity, (value) {
                setState(() {
                  selectedCity = value;
                });
              }),
              SizedBox(height: 20),
              Text(
                'Budget:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              buildFilterOptions(budgets, selectedBudget, (value) {
                setState(() {
                  selectedBudget = value;
                });
              }),
              SizedBox(height: 20),
              Text(
                'Capacity:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              buildFilterOptions(capacities, selectedCapacity, (value) {
                setState(() {
                  selectedCapacity = value;
                });
              }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'city': selectedCity,
                    'budget': selectedBudget,
                    'capacity': selectedCapacity,
                  });
                },
                child: Text('Apply Filters'),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget buildFilterOptions(List<String> options, String selectedOption, void Function(dynamic) onChanged) {
  return Column(
    children: options.map((option) {
      return RadioListTile(
        title: Text(option),
        value: option,
        groupValue: selectedOption,
        onChanged: onChanged,
      );
    }).toList(),
  );
}
}
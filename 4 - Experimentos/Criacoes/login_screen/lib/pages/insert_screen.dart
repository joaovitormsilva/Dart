import 'package:flutter/material.dart';
import 'package:login_screen/models/database_helper.dart';

class InsertScreen extends StatefulWidget {
  @override
  _InsertScreenState createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final DBHelper _dbHelper = DBHelper();
final data = {'field1': 'value1', 'field2': 'value2'};

  void _saveData() async {
    String name = _nameController.text;
    int? age = int.tryParse(_ageController.text);

    if (name.isNotEmpty && age != null) {
      await _dbHelper.saveData('my_table', data);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                hintText: 'Enter your age',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: _saveData,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

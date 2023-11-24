import 'package:flutter/material.dart';
import 'dataModel.dart';

import 'displayingData.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your input fields and buttons go here
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Enter Name'),
            ),
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'Enter User ID'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Enter Age'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String userId = _userIdController.text;
                String age = _ageController.text;

                if (name.isNotEmpty && userId.isNotEmpty && age.isNotEmpty) {
                  DataModel newItem = DataModel(name: name, userId: userId, age: age);
                  dataModelList.itemList.add(newItem);
                  _nameController.clear();
                  _userIdController.clear();
                  _ageController.clear();

                  // Pass the callback function to DisplayScreen
                  _updateDisplayScreen(dataModelList.itemList);
                }
              },
              child: Text('Add Item'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayScreen(),
                  ),
                );
              },
              child: Text('Display Items'),
            ),
          ],
        ),
      ),
    );
  }

  // Callback function to update the DisplayScreen
  void _updateDisplayScreen(List<DataModel> updatedList) {
    setState(() {
      dataModelList.itemList = updatedList;
    });
  }
}

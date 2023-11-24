import 'package:flutter/material.dart';
import 'dataModel.dart';

class EditScreen extends StatefulWidget {
  final DataModel item;

  EditScreen({required this.item});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late TextEditingController _nameController;
  late TextEditingController _userIdController;
  late TextEditingController _ageController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.item.name);
    _userIdController = TextEditingController(text: widget.item.userId);
    _ageController = TextEditingController(text: widget.item.age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:'),
            TextField(controller: _nameController),
            SizedBox(height: 16),
            Text('User ID:'),
            TextField(controller: _userIdController),
            SizedBox(height: 16),
            Text('Age:'),
            TextField(controller: _ageController),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveAndPop(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveAndPop(BuildContext context) {
    DataModel editedItem = DataModel(
      name: _nameController.text,
      userId: _userIdController.text,
      age: _ageController.text,
    );

    // Return the edited item to the previous screen
    Navigator.pop(context, editedItem);
  }
}

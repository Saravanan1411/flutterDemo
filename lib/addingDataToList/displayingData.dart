import 'package:flutter/material.dart';
import 'dataModel.dart';
import 'editingData.dart';

class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Screen'),
      ),
      body: ListView.builder(
        itemCount: dataModelList.itemList.length,
        itemBuilder: (context, index) {
          DataModel item = dataModelList.itemList[index];
          return ListTile(
            title: Text("${item.name}"),
            subtitle: Text("User ID: ${item.userId}, Age: ${item.age}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _navigateToEditScreen(context, item, index);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    _removeItem(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _navigateToEditScreen(BuildContext context, DataModel item, int index) async {
    final editedItem = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditScreen(item: item)),
    );

    if (editedItem != null) {
      // Update the list with the edited item
      setState(() {
        dataModelList.itemList[index] = editedItem;
      });
    }
  }

  void _removeItem(int index) {
    setState(() {
      dataModelList.itemList.removeAt(index);
    });
  }
}

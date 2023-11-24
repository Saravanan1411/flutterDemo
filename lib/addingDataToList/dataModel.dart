class DataModel {
  String? name;
  String? userId;
  String? age;

  DataModel({required this.name, required this.userId, required this.age});
}

class DataModelList {
  List<DataModel> itemList;

  DataModelList(List<Map<String, String>> itemData) : itemList = itemData.map((e) => DataModel(name: e['name'] ?? '', userId: e['userId'] ?? '', age: e['age'] ?? '',)).toList();
}


var itemData = [
  {
    'name': 'John',
    'userId': '123',
    'age': '25'
  },
  {
    'name': 'Mark',
    'userId': '123',
    'age': '25'
  },

];

DataModelList dataModelList = DataModelList(itemData);



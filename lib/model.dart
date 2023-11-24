


class Model
{
  String? image;
  String? text;
  //String? text2;


  Model(this.image,this.text);
}

List lis = modelData.map((e) => Model(e["image"], e["text"])).toList();


 var modelData = [
   {"image":"assets/phones.jpg","text":"hello"},
   {"image":"assets/phone2.jpg","text":"hello2"},
   {"image":"assets/phone3.jpg","text":"hello3"},


 ];



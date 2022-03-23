class BabyCareModel {
  int rightChipText;
  int leftChipText;
  String image;
  String text;
  int price;

  BabyCareModel({
    required this.image,
    required this.leftChipText,
    required this.price,
    required this.rightChipText,
    required this.text,
  });
}

List<BabyCareModel> babyCare = [
  BabyCareModel(image: "image", leftChipText: 1248, price: 120, rightChipText: 12, text: "Panadol 500mg Tablet 10.0 'S")
,  BabyCareModel(image: "image", leftChipText: 1248, price: 120, rightChipText: 12, text: "Nan 2 Optipro 400G Baby Milk Powder")
];

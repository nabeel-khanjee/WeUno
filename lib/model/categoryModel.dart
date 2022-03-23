class CategoryModel {
  String image;
  String text;
  CategoryModel({required this.image, required this.text});
}

List<CategoryModel> categoryModel = [
  CategoryModel(image: "assets/Images/Medicines.jpg", text: "Medicine"),
  CategoryModel(image: "assets/Images/consumer-goods.webp", text: "Consumer Goods"),
  CategoryModel(image: "assets/Images/foods.jpg", text: "Foods"),
  // CategoryModel(image: "image", text: "Consumer Goods"),
  
  
];

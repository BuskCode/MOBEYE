/* import 'package:mob_eye/features/authentication/models/product_model.dart';

class CartModel extends ProductModel {
  int quantity = 0;

  CartModel({id, name, category, imageUrl, oldPrice, price, required this.quantity})
      : super(
            id: id,
            name: name,
            category: category,
            imageUrl: imageUrl,
            price: price);

  factory CartModel.fromJson(Map<String, dynamic> json) {
    final item = ProductModel.fromJson(json);
    final quantity = json['antal'];
    return CartModel(
        id: item.id,
        name: item.name,
        imageUrl: item.imageUrl,
        price: item.price,
        quantity: quantity);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['imageUrl'] = this.imageUrl;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    return data;
  }
} */

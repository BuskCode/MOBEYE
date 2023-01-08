/* class ProductModel {
  int? id;
  String? name='';
  String? category='';
  String? imageUrl='';
  String? price='';

  ProductModel(
      {required this.id,
      required this.name,
      required this.category,
      required this.imageUrl,
      required this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['imageUrl'] = this.imageUrl;
    data['price'] = this.price;
    return data;
  }
} */

class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static const List<Product> products = [
    Product(
        name: 'Røde briller',
        price: 750,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fbilligsolbrille.dk%2Fwp-content%2Fuploads%2F2019%2F04%2Fp767cRD-billig-brille-1.jpg&imgrefurl=https%3A%2F%2Fbilligsolbrille.dk%2Fshop%2Fwayfarer-briller-uden-styrke-roede%2F&tbnid=U1LzYnVGAjLWRM&vet=12ahUKEwjA_NuU1438AhURuyoKHeFgCQMQMygCegUIARCdAw..i&docid=bUNNb2Ip8kKxRM&w=800&h=800&q=r%C3%B8de%20briller&ved=2ahUKEwjA_NuU1438AhURuyoKHeFgCQMQMygCegUIARCdAw'),
    Product(
        name: 'Blå briller', 
        price: 500, 
        imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fshopsolbriller.dk%2Fsolbriller%2Fs3782.jpg&imgrefurl=https%3A%2F%2Fshopsolbriller.dk%2F%3Fid%3Dklar_glas_briller%26language%3Dnok%26dnr%3D3782%26large%3Dy&tbnid=gO2NfGwf5BaEmM&vet=12ahUKEwjNkKnI1438AhVslosKHfb3DmoQMygFegUIARCyAw..i&docid=qbNYqBOpdo2VPM&w=900&h=600&itg=1&q=bl%C3%A5%20briller&ved=2ahUKEwjNkKnI1438AhVslosKHfb3DmoQMygFegUIARCyAw'),
    Product(
        name: 'Gule briller', 
        price: 1000, 
        imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fbilligsolbrille.dk%2Fwp-content%2Fuploads%2F2019%2F04%2Fp767cYW-billig-brille-1.jpg&imgrefurl=https%3A%2F%2Fbilligsolbrille.dk%2Fshop%2Fwayfarer-briller-uden-styrke-gule%2F&tbnid=SD7Um0oOrS56hM&vet=12ahUKEwjqpOzz1438AhVm-yoKHTLRAdsQMygBegUIARCsAw..i&docid=ilm3fHT1sYD5UM&w=800&h=800&q=gule%20briller&ved=2ahUKEwjqpOzz1438AhVm-yoKHTLRAdsQMygBegUIARCsAw'),

    Product(name: 'Grønne briller', price: 1500, imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fshopsolbriller.dk%2F%3Flanguage%3Dsek%26id%3Dklar_glas_briller%26large%3Dy%26dnr%3D469&psig=AOvVaw1xp8agAenyq645bp7Wgpte&ust=1671814425362000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDT-JnYjfwCFQAAAAAdAAAAABAL'),
  ];
}

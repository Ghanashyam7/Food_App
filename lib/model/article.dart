
class Products{
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  Products(
  {
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
});
  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id:json['id'],
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'],
      stars: json['stars'],
      img: json['img'] as String,
      location: json['location'] as String,
    );
  }
}
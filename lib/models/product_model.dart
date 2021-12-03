
class Product {
    Product({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.image,
        
    });

    int id;
    String title;
    double price;
    String description;
    String image;
   

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        image: json["image"],
       
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        
    };
}




class CarouselTops {
  final int id;
  final String name;
  final String image;
  final String description;
  final double precio;

  const CarouselTops({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.precio,
  });

  factory CarouselTops.fromJson(Map<String, dynamic> json) => CarouselTops(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      description: json["description"],
      precio: json["precio"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "precio": precio,
      };

  CarouselTops copy() => CarouselTops(
        id: id,
        name: name,
        image: image,
        description: description,
        precio: precio,
      );
}

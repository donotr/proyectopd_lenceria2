class CarouselPointsSale {
  final String name;
  final String image;


  const CarouselPointsSale({
    required this.name,
    required this.image,
  });

  factory CarouselPointsSale.fromJson(Map<String, dynamic> json) => CarouselPointsSale(
      name: json["name"],
      image: json["image"],
);

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };

  CarouselPointsSale copy() => CarouselPointsSale(
        name: name,
        image: image,
      );
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyecto_lenceria/data/data_carousel_top.dart';
import 'package:proyecto_lenceria/models/carouseltop_model.dart';
import 'package:proyecto_lenceria/presentation/show_carousel_top.dart';

class CarruselViewTops extends StatelessWidget {
  const CarruselViewTops({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: carouselImagesTops.length,
          itemBuilder: ((context, index, realIndex) {
            //Dice que no se usa pero si se usa, NO TOCAR
            final carouselImageTops = carouselImagesTops[index];
            return CardImages(
              carouselImages: carouselImagesTops[index],
            );
          }),
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 4),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class CardImages extends StatelessWidget {
  final CarouselTops carouselImages;
  const CardImages({super.key, required this.carouselImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carouselImages.copy();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ShowRecipe(carouselImages: carouselImages,)));

          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/images/34.jpeg"),
            image: AssetImage(carouselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

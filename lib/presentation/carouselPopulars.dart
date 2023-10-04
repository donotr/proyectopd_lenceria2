import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyecto_lenceria/data/data_carousel_pop.dart';
import 'package:proyecto_lenceria/models/carouselpop_model.dart';
import 'package:proyecto_lenceria/presentation/show_carousel_pop.dart';

class CarruselViewPops extends StatelessWidget {
  const CarruselViewPops({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: carouselImagesPopular.length,
          itemBuilder: ((context, index, realIndex) {
            final carouselImagePopular = carouselImagesPopular[index];
            return CardImages(
              carouselImages: carouselImagesPopular[index],
            );
          }),
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 5),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class CardImages extends StatelessWidget {
  final CarouselPops carouselImages;
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
























/*class CarruselView extends StatelessWidget {
  const CarruselView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.only(top: 10),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 250.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3)),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration:
                              BoxDecoration(color: Colors.purple.shade100),
                          child: Center(
                              child: Text(
                            'Imagen $i',
                            style: TextStyle(fontSize: 16.0),
                          )));
                    },
                  );
                }).toList(),
              ),
    );
  }
}*/
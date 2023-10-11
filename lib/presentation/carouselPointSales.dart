import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyecto_lenceria/data/data_carousel_pointssales.dart';
import 'package:proyecto_lenceria/models/carousel_pointssales.dart';
import 'package:proyecto_lenceria/presentation/show_carousel_pointssales.dart';


class CarruselViewPointSales extends StatelessWidget {
  const CarruselViewPointSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: carouselPointsSales.length,
          itemBuilder: ((context, index, realIndex) {
            //Dice que no se usa pero si se usa, NO TOCAR
            final carouselPointSales = carouselPointsSales[index];
            return CardImages(
              carouselImages: carouselPointsSales[index],
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,40,20,40),
          child: Text('Somos personas dedicadas a la distribución de lencería de diferentes marcas; nuestro principal enfoque es satisfacer los deseos, gustos y preferencias de las personas del buen gusto en ropa interior con diseños modernos, atractivos, cómodos, prácticos y sensuales al usarlos, para todos los gustos.',textAlign: TextAlign.justify,),
        )
      ],
    );
  }
}

class CardImages extends StatelessWidget {
  final CarouselPointsSale carouselImages;
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
                context, MaterialPageRoute(builder: (context) => ShowCarouselPointsSales(carouselImages: carouselImages,)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/images/loader4.gif"),
            image: AssetImage(carouselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}









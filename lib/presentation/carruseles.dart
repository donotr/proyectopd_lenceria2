import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarruselView extends StatelessWidget {
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
}

@override
  Widget build1(BuildContext context) {

    return Container();
  }
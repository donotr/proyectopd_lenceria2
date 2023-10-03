import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/models/carouselpop_model.dart';

class ShowRecipe extends StatelessWidget {
  final CarouselPops carouselImages;
  const ShowRecipe({super.key, required this.carouselImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
        elevation: 0,
        title: Text(
          carouselImages.name,
          style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Image.asset(carouselImages.image),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
                    child: Text(
                      'Id del articulo: ${carouselImages.id}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 10, 0),
                    child: Text('Precio: \$${carouselImages.precio}',
                    style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text(
                carouselImages.description,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}

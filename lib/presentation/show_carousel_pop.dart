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
          style: const TextStyle(color: Colors.black),),
          iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        
        child: ListView(
          children: [            
            const Padding(padding: EdgeInsets.all(10)),
            Column(
              children: [
              //clipRRect funciona mas que todo solo en columns
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(carouselImages.image),
                ),
              ],
            ),
      

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
                    child: Text(
                      'Id del articulo: ${carouselImages.id}',
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 10, 0),
                    child: Text('Precio: \$${carouselImages.precio}',
                    style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text(
                carouselImages.description,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Agregar al carrito', style: TextStyle(fontSize: 16,color: Colors.black),),
                  icon: const Icon(Icons.shopping_cart, color: Colors.black,),
                  style: ElevatedButton.styleFrom(fixedSize: const Size(100, 60),backgroundColor: const Color.fromARGB(216, 107, 45, 117)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/data/data_carousel_pop.dart';
import 'package:proyecto_lenceria/models/carouselpop_model.dart';

class GridButton extends StatelessWidget {
  

  const GridButton({
    super.key,    
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
          
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: carouselImagesPopular.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8
                ),
            itemBuilder: (context, index) => CarouselPopsCard(carouselPop: carouselImagesPopular[index],)
            ),
      ),
    );
  }
}

class CarouselPopsCard extends StatelessWidget {
  final CarouselPops carouselPop;

  const CarouselPopsCard({super.key, required this.carouselPop});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      //color: Colors.purple.shade100,
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 250,
            width: 200,
            child: ClipRRect(
              child: Image.asset(carouselPop.image),              
              borderRadius: BorderRadius.circular(15),
            ),
            
          ),
              Container(
      color: Colors.white.withOpacity(0.5),
    ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Text(
                    carouselPop.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                    ),
                    ),
                ),
                
              ),
  ),
),
        ],
      ),
    );
  }
}
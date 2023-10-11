import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/models/carousel_pointssales.dart';

class ShowCarouselPointsSales extends StatelessWidget {
  final CarouselPointsSale carouselImages;
  const ShowCarouselPointsSales({super.key, required this.carouselImages});

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
                  child: Image.asset(carouselImages.image,width: 400,height: 300,fit: BoxFit.cover,),                
                ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text(
                'Deserunt qui dolor non eiusmod magna amet laborum. Sunt dolore adipisicing aute ea '
                'commodo ullamco. In ipsum sint qui ipsum nulla nostrud ea consectetur ut. Nulla dolore'
                ' irure occaecat sit Lorem duis est incididunt ullamco. Minim ex aliqua proident aliqua.',
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            ),                
              ],
            ),
      

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/presentation/carouselPointSales.dart';

class AboutUs extends StatelessWidget {

  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(216, 107, 45, 117),
        title: const Text('Acerca de nosotros'),
        titleTextStyle: TextStyle(color: Colors.black,
        fontSize: 20),        
      ),
      body:  ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [                    
          //TEXTO DEL CARRUSEL PUNTOS DE VENTA
          Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
            child: const Text(
              'Puntos de venta',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),

          //EMPIEZAN LOS CARRUSELES POPULARES
          const CarruselViewPointSales(),
        ],
        ),
    );
  }
}



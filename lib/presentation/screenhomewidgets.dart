import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/presentation/barrabusqueda.dart';
import 'package:proyecto_lenceria/presentation/carruseles.dart';
import 'package:proyecto_lenceria/presentation/carruseles2.dart';
import 'package:proyecto_lenceria/presentation/drawer.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const DrawerWidget(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lingerie App'),
          backgroundColor: const Color.fromARGB(216, 107, 45, 117),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 225, 190, 231),
                
              ),
              onPressed: () {
                // hara algo
              },
            )
          ],
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //BARRA BUSQUEDA
            const OurSearchBar(),
            //TEXTO DEL CARRUSEL
            Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
              child: const Text(
                'Most Popular',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            //EMPIEZAN LOS CARRUSELES
            const CarruselView(),
            //TEXTO DEL CARRUSEL
            Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
              child: const Text(
                'Top Sales',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            //EMPIEZA CARRUSEL 2
            const CarruselView2(),

          // prueba imagenes de colecciones

          ],

          
        ),
        
      );
  }
}

  

 
  

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child:Container(
      color: Colors.purple.shade100,
      child: const Column(children: [
        //EMPEZAR A CREAR CONTENIDO EN EL DRAWER
            /*Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(50),
                child: Image.network(
                    "https://yt3.googleusercontent.com/ytc/APkrFKY2i_XtwR1UNMHmZv7MGDvXAbPWjIe7Q8lmSi62=s176-c-k-c0x00ffffff-no-rj"),
              )*/
      ],)
    ) ,);
    
    
  }
}
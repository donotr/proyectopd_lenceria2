import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  //final IconData icon;
  //final String text;
  //final VoidCallback onPressed;

  const GridButton({
    super.key,
    //required this.icon,
    //required this.text,
    //required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 40,
                width: 40,                
                color: Colors.purple.shade100,
                child: const Center(child: Text('Hola'),)
              ),
            );
          }),
    );
  }
}

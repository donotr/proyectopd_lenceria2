import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {

  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(216, 107, 45, 117),
        title: const Text('Contactanos'),
        titleTextStyle: TextStyle(color: Colors.black,
        fontSize: 20),
      ),
      body: const Center(child: Text('Contactos')),
    );
  }
}
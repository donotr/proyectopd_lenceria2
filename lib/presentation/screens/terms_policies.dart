import 'package:flutter/material.dart';

class TermsPolicies extends StatelessWidget {

  const TermsPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(216, 107, 45, 117),
        title: const Text('Terminos y Condiciones'),
        titleTextStyle: TextStyle(color: Colors.black,
        fontSize: 20),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 225,190, 231)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.info_outline,
              color: Color.fromARGB(255, 225, 190, 231),
            ),
            onPressed: () {
              // hara algo
            },
          )
        ],        
      ),
      body: ListView(
        children: [

          Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                child: const Text(
                  'Politica de Devoluciones',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: const Padding(
              padding:  EdgeInsets.all(8),
              child: Text(
                    'La empresa no se hara cargo de reembolsos o cambios si la mercancia ha sido dañada o usada'
                    '. A su vez, el periodo de devolucion del dinero depende del banco pero un estimado siempre sera dentro de 7-10 habiles',textAlign: TextAlign.justify,
                    style: CustomTextStyle(),
                  ),
            ),
          ),
          Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                child: const Text(
                  'Politica de Cambios',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: const Padding(
              padding:  EdgeInsets.all(8),
              child: Text(
                    'Los cambios solo seran contactando con el vendedor directamente.'
                    '\n \n'
                    'Cambio en el producto solo es aplicado a el mismo producto seleccionado, solo se cambia la talla y color ',textAlign: TextAlign.justify,
                    style: CustomTextStyle(),
                  ),
            ),
          ),              
          

          Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                child: const Text(
                  'Politica de Devoluciones',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),


          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: const Padding(
              padding:  EdgeInsets.all(8),
              child: Text(
                    'Se debe devolver el producto con su etiqueta o no se aceptara la devolucion.'
                    '\n \n'
                    'Se debe devolver el producto dentro de 7 dias habiles '
                    '\n \n'
                    'Se debe devolver el producto con su empaque original',textAlign: TextAlign.justify,
                    style: CustomTextStyle(),
                  ),
            ),
          ),                              
        ],
      ),
    );
  }
}

class CustomTextStyle extends TextStyle {
  const CustomTextStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.black,
  }) : super(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        );
}


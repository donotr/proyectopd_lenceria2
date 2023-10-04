import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child:Container(
      color: Colors.purple.shade100,
      padding: EdgeInsets.only(top: 60),
      child:  Column(children: [
        //EMPEZAR A CREAR CONTENIDO EN EL DRAWER      
        SizedBox(          
          width: 200,
          height: 200,
          child: FadeInImage.assetNetwork(
            
            placeholder: 'assets/images/loader4.gif',
            image: 'https://cdn4.iconfinder.com/data/icons/music-ui-solid-24px/24/user_account_profile-2-256.png',
            fit: BoxFit.cover,
          ),
        )
      ],
      ),
    ),
    );
    
    
  }
}
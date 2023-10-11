import 'package:flutter/material.dart';
import 'package:proyecto_lenceria/presentation/screens/about_us.dart';
import 'package:proyecto_lenceria/presentation/screens/contact_us.dart';
import 'package:proyecto_lenceria/presentation/screens/screenhomewidgets.dart';
import 'package:proyecto_lenceria/presentation/screens/terms_policies.dart';
import 'package:proyecto_lenceria/presentation/social_media.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
      color: Colors.purple.shade100,
      padding: EdgeInsets.only(top: 60),
      child:  Column(
        children: [
        //EMPEZAR A CREAR CONTENIDO EN EL DRAWER      
        SizedBox(          
          width: 200,
          height: 200,
          child: FadeInImage.assetNetwork(
            
            placeholder: 'assets/images/loader4.gif',
            image: 'https://cdn4.iconfinder.com/data/icons/music-ui-solid-24px/24/user_account_profile-2-256.png',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 20),
        child: Divider(
            color:  Color.fromARGB(216, 107, 45, 117),
            thickness: 5.0,
        ),
        ),
        ListTile(
          title: Text("Inicio"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> ScreenHome())
            );
          }
        ),
        
        ListTile(
          title: Text("Acerca de nosotros"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> AboutUs())
            );
          }
        ),
        ListTile(
          title: Text("Contactanos"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> ContactUs())
            );
          }
        ),
        ListTile(
          title: Text("Terminos & Condiciones"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> TermsPolicies())
            );
          }
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5)
        ),
        const SocialMediaRow(),


      ],
      ),
    ),
    );
    
    
  }
}
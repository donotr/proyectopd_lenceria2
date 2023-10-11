import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(FontAwesomeIcons.facebook),
          onPressed: () => _launchURL('https://www.facebook.com/'),
        ),
        IconButton(
          icon: const Icon(FontAwesomeIcons.instagram),
          onPressed: () => _launchURL('https://www.instagram.com/'),
          
        ),
        IconButton(
          icon: const Icon(FontAwesomeIcons.twitter),
          onPressed: () {_launchURL('https://www.twitter.com/');} 
          
        ),

        
      ],
    );
  }
}

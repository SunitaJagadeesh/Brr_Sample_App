import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async{
  //const url = null ;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
import 'package:central_mandados/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      // navigateAfterSeconds: new AfterSplash(),
      navigateAfterSeconds: new HomePage(),
      seconds: 10,
      title: new Text(
        'Central de Mandados',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
      ),
      photoSize: 100,
      image: new Image.network(
          'https://64.media.tumblr.com/87fcee609f1532321e095a6104589191/6ad55c8e562b4ae0-1f/s400x600/2ead387b802d044654ca0dbf26108310e86a4c58.jpg'),
      backgroundColor: Colors.black,
      loaderColor: Colors.red,
      loadingText: new Text(
        'Aguarde...',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}

// class AfterSplash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Welcome In SplashScreen Package"),
//         automaticallyImplyLeading: false,
//       ),
//       body: new Center(
//         child: new Text(
//           "Succeeded!",
//           style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
//         ),
//       ),
//     );
//   }
// }
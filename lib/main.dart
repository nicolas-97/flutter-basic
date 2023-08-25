import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String image = 'https://seeklogo.com/images/A/android-logo-8F906C4135-seeklogo.com.png';

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola, bienvenido'),
          actions: [
            TextButton(onPressed: () => {
              print('Se ha clickeado')
            }, child: const Text('Hola', 
              style: TextStyle(
                color: Colors.white
                ),
              ),
              onLongPress: () => {},
            ),
            IconButton(onPressed: () => {},
              icon: Icon(Icons.arrow_right),
            ),
          ],
        ),

        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hola Mundo', style: 
              TextStyle(
                fontSize: 30
              ),
            ),
            Image.network(
              image
            ),
            Image.asset('images/logo.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home', style: TextStyle(fontSize: 30)),
                Text('Products', style: TextStyle(fontSize: 30),)
              ],
            )
          ],
        )
      )
    );
  }
}
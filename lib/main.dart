import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/updte_product_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        HomePage.id : (context)=> const HomePage(),
        UpdateProductPage.id : (context)=>  UpdateProductPage(),
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

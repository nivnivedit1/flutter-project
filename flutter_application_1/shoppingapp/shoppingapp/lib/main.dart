import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:shoppingapp/cart_page.dart';
import 'package:shoppingapp/cart_provider.dart';
 //import 'package:shoppingapp/cart_provider.dart';
//import 'package:shoppingapp/global_variables.dart';
import 'package:shoppingapp/homepage.dart';
//import 'package:shoppingapp/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) =>CartProvider())],
      child: MaterialApp(home: const HomePage(),
          title: 'Shopping App',
         theme: ThemeData(
          fontFamily: 'Lato',
           colorScheme: ColorScheme.fromSeed(
            seedColor:const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black
              )
            ),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ) ,
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )
            ),
            useMaterial3: true,
         ),
        
        
      ),
    );
  }
}



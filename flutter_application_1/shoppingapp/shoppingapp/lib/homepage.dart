
import 'package:flutter/material.dart';
import 'package:shoppingapp/cart_page.dart';
import 'package:shoppingapp/product_list.dart';

class HomePage extends StatefulWidget {
  const  HomePage({super.key});

   @override
   State<HomePage>createState() => _HomePageState(); }

class _HomePageState extends State<HomePage>{
  // final List<String> filters = const [
  //   'All', 'Self-help', 'Fiction','Finance'
  // ];
  //  late String selectedFilter;

   int currentPage = 0;

   List<Widget> pages = const [//this is the page we want to show
    ProductList(),
    CartPage(),
   ];

   

  @override
  Widget build(BuildContext context) {
  //   const border = OutlineInputBorder(
  //    borderSide: BorderSide(
  //      color: Color.fromRGBO(225, 225, 225, 1),
  //    ),
  //    borderRadius: BorderRadius.horizontal(left: Radius.circular(50),
  //    ),
  // );
    return Scaffold(
       body:IndexedStack(
        index: currentPage,
        children: pages,
       ),
      bottomNavigationBar: BottomNavigationBar( 
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
          ),
          ]),
     
    );
  }
}
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundcolor;
  const ProductCard({super.key,
  required this.title,
  required this.price,
  required this.image,
  required this.backgroundcolor,});
  


  @override
  Widget build(BuildContext context) {
    
    return  Container(
      //color: const Color.fromRGBO(216, 240, 253, 1),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:backgroundcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, 
            style: Theme.of(context).textTheme.titleLarge,
            ),
           const  SizedBox(height: 5,),
            Text('\$$price',
            style: Theme.of(context).textTheme.bodySmall, ),
        const  SizedBox(height: 5,),
        Center(child: Image.asset(image , height:350),
        ),
        
          ],
        ),
      ),
    );
  }
}
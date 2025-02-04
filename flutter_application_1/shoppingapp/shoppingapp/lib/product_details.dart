import 'package:flutter/material.dart';
import 'package:shoppingapp/cart_provider.dart'; // Make sure this path matches your CartProvider location
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  final Map<String, Object> product;
  
  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  // This function is now simplified to just add a product and show a SnackBar.
  void addProductToCart() {
    // Adding the product to the cart using the provider
    Provider.of<CartProvider>(context, listen: false).addProduct(widget.product);

    // Showing a SnackBar notification
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Product added successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Details')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Text(
            widget.product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(widget.product['imageUrl'] as String),
          ),
          const Spacer(flex: 50),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$${widget.product['price']}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: addProductToCart,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:shoppingapp/cart_provider.dart';
// import 'package:provider/provider.dart';

// class ProductDetails extends StatefulWidget {
//   final Map<String , Object>product;
//   const ProductDetails({super.key,
//   required this.product,});

//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   int selectedBook = 0;

//  void onTap(){
//   if (selectedBook !=0){
//     Provider.of<CartProvider>(context, listen: false).addProduct(
//     {
//   'id' : widget.product['id'],
//    'title' : widget.product['title'],
//    'price' : widget.product['price'],
//    'imageUrl' : widget.product['imageUrl'],
//    'booktype' :widget.product['booktype'],

//  },
//  );
//  ScaffoldMessenger.of(context).showSnackBar(
//   const SnackBar(content: Text('Product added successfully'),
//   ),
//  );
//  } else {
//   ScaffoldMessenger.of(context).showSnackBar(
//     const SnackBar(content: Text('please select a book'),
//     )
//   );
//  }
// }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: const Center(child:  Text('Details')),
//           leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Column(
//         children: [Text(widget.product['title'] as String , style:Theme.of(context).textTheme.titleLarge, 
//         ),
//        const  Spacer(),
//        Padding(
//          padding: const EdgeInsets.all(50.0),
//          child: Image.asset(widget.product['imageUrl'] as String),
//        ),
//       const Spacer(flex: 50,),
//       Container(
//         height: 150,
//         decoration:  BoxDecoration(
//           color:const  Color.fromRGBO(245, 247, 249, 1),
//           borderRadius: BorderRadius.circular(40)
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('\$${widget.product['price']}', style: Theme.of(context).textTheme.titleLarge,
//               ),
//             //const   SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: ElevatedButton( 
//                // ElevatedButton.icon(onPressed: (){}, icon:Icons.shopping_cart, ),
//                 onPressed: (){
//                   Provider.of<CartProvider>(context, listen:false).addProduct(widget.product);
//                 },                
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Theme.of(context).colorScheme.primary,
//                   minimumSize:const Size(double.infinity, 50), 
//                 ),
                
//                child:const  Text('Add to Cart',
//                style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18,
//                ),),
//                ),
//                //ElevatedButton.icon(onPressed: onPressed, icon: icon, label: label)
//             ),

//             ],
//         ),
//       )

//         ],
//       ),
//       );
//   }
// }
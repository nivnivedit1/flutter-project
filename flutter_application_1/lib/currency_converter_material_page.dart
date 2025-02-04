import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
   CurrencyConverterMaterialPage({super.key});

  TextEditingController textEditingController = TextEditingController();
//1.create a variable that stores the converted currency value
//2.create a function that multiplies the value given by the textfield
//3.store the value in the variable that we created
//4.display the variable
  @override
  Widget build(BuildContext context) {
    int result = 0;
  return  Scaffold(
    backgroundColor: const Color.fromRGBO(121, 85, 72, 1),
    appBar: AppBar(
      backgroundColor:const Color.fromRGBO(121, 85, 72, 1),
      title: const Center(child:  Text("currency converter")),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       const   Text('0',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          ),
         Padding(
            padding:const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: const InputDecoration(
               hintText: 'xxx',hintStyle: TextStyle(
                color: Colors.black,
               ),
               prefix: Icon(Icons.monetization_on_outlined),
               prefixIconColor: Colors.purple,
               filled: true,
               fillColor: Colors.white,
               focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
            
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                  ),
               ),
               enabledBorder: 
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
            
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                  ),
               ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed:() {
               if (kDebugMode) {print("button clicked");
              }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                 minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50),
                 ),
                 ),
              child: const Text("convert")
              ),
          ),

        ],
      ),
    ),
  );
  }
}
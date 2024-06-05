import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconImaePath;
  final String buttonText;
  const MyButton({super.key, 
  required this.iconImaePath, 
  required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         height: 90,
          padding: const EdgeInsets.all(20),
           decoration: BoxDecoration(
            color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.grey.shade400,
                    blurRadius: 20,
                      spreadRadius: 10,
                        ),
                      ]
                    ),
                  child: Center(
                 child: Image.asset(iconImaePath),
                  ),
                ),
              const SizedBox(height: 10,),
             //text
             Text(buttonText, 
              style: const TextStyle(
            fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      )
     ],
   );
 }
}
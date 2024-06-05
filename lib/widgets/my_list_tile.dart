import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {

  final String iconImagePath;
  final String tileTitle;
  final String titleSubtitle;
  const MyListTile({super.key, 
  required this.iconImagePath, 
  required this.tileTitle, 
  required this.titleSubtitle
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      //icon
        Row(
          children: [
           Container(
            padding: const EdgeInsets.all(12),
             height:80,
              decoration: BoxDecoration(
               color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)
                 ),
                 child: Image.asset(iconImagePath),
                  ),
                   SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(tileTitle,
                           style: const TextStyle(
                            fontSize: 20,
                             fontWeight: FontWeight.bold,
                              ),
                              ),
                               SizedBox(height: 12,),
                                Text(titleSubtitle,
                                style: TextStyle(
                                 fontSize: 16,
                                  color: Colors.grey[600]
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      );
  }
}
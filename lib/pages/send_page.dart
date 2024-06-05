import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/my_button.dart';

import '../widgets/my_list_tile.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          // app bar
          children: [
           const  Padding(
              padding: EdgeInsets.all(
                25
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row (
                    children: [
                      Text('Send', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(width: 8,),
                      Text('Money', style: TextStyle(
                        fontSize: 30,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text('Add your bank account', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 130,
            width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            color: Colors.blue[200]
            ),
            child:const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Why to add bank account?', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text('Without adding your bank account, you are not able to send money.', 
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),

          const Padding(
             padding:  EdgeInsets.all(25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  iconImaePath: 'lib/icons/money.png', 
                  buttonText: 'Nedbank',
                  ),
                  SizedBox(width: 20,),
                  MyButton(
                  iconImaePath: 'lib/icons/money.png', 
                  buttonText: 'FNB',
                  ),
                  SizedBox(width: 20,),
                  MyButton(
                  iconImaePath: 'lib/icons/money.png', 
                  buttonText: 'ABSA',
                  ),
              ],
            ),
           ),
          ]
        ),
        
      )
    );
  }
}
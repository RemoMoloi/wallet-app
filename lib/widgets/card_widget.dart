import 'package:flutter/material.dart';


class MyCards extends StatelessWidget {
  final String amount;
  final String bankName;
  final String cardNum;
  final String expDate;
  final Color color;
  const MyCards({
    super.key, 
    required this.amount, 
    required this.cardNum, 
    required this.expDate, 
    required this.color, 
    required this.bankName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Container(
        width: 350,
        padding: const EdgeInsets.all(20),
        //height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(bankName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
            Image.asset('lib/icons/visa.png',height: 50,),
            ],
            ),
             
            const SizedBox(height: 5,),
            const Text('Balance',
            style: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            ),
            const SizedBox(height: 10,),
            Text(amount,
             style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
           ),
           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(cardNum,
                 style: const TextStyle(
              color: Colors.white,
            ),
                ),
                //card expiry date
                Text(expDate,
               style: const TextStyle(
              color: Colors.white,
            ),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
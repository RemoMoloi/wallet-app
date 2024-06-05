import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/widgets/my_list_tile.dart';

import '../widgets/card_widget.dart';
import '../widgets/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //pagecontroller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: const Icon(
            Icons.monetization_on,
            size: 35,),
          onPressed: (){},
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 65,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
              Icons.home,
              size: 30,),
              ),
              IconButton(
              onPressed: (){}, 
              icon: const Icon(
              Icons.settings,
              size: 30,
              ),
              ),
          ],
        ),
      ),
      body:  SafeArea(
        child: Column(
          // app bar
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:25.0
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Row (
                    children: [
                      Text('My ', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Wallet', style: TextStyle(
                        fontSize: 30,
                      ),
                      ),
                    ],
                  ),

                  //add button
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            //card
           Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: const [
                MyCards(
                 amount: 'R 14 744.00', 
                 cardNum: '**** **** **** 4401', 
                 expDate: '03/25', 
                 color: Color.fromARGB(255, 9, 99, 12), bankName: 'NedBank',),
                 MyCards(
                 amount: 'R 145 744.00', 
                 cardNum: '**** **** **** 4401', 
                 expDate: '03/25', 
                 color: Color.fromARGB(255, 3, 91, 163),
                 bankName: 'Standard Bank',),
                 MyCards(
                  amount: 'R 3 568 789.54', 
                  cardNum: '**** **** **** 6345', 
                  expDate: '12/24', 
                  color: Color.fromARGB(255, 160, 96, 0),
                  bankName: 'Standard Bank',
                  ),
                 MyCards(
                  amount: 'R 10 865 745.41 ', 
                  cardNum: '**** **** **** 7785', 
                  expDate: "09/29", 
                  color: Colors.black,
                  bankName: 'FNB',
                  ),
              ],
            ),
           ),
           const SizedBox(height: 20,),
           SmoothPageIndicator(
            controller: _controller, 
            count: 4,
            effect: WormEffect(
              activeDotColor: Colors.grey.shade800
            ),
            ),
            const SizedBox(height: 20,),

            // buttons [ send, pay, bills] 
              const Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                  MyButton(
                    iconImaePath: 'lib/icons/money.png', 
                    buttonText: 'Send',
                  ),
                  SizedBox(width: 15,),
                  // pay button
                  MyButton(
                    iconImaePath: 'lib/icons/atm-card.png', 
                    buttonText: 'Pay',
                  ),
                  SizedBox(width: 15,),
                  ////bill button
                  MyButton(
                    iconImaePath: 'lib/icons/bill.png', 
                    buttonText: 'Bills',
                  ),
                  //const SizedBox(width: 15,),
                             ],
                           ),
               ),
               
               const Padding(
                 padding:  EdgeInsets.all(25.0),
                 child: Column(
                    children: [
                      // stats
                      MyListTile(
                        iconImagePath: 'lib/icons/stats.png', 
                        tileTitle: 'Statistics', 
                        titleSubtitle: 'Payments and Income'
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      MyListTile(
                        iconImagePath: 'lib/icons/money-transfer.png', 
                        tileTitle: 'Transactions', 
                        titleSubtitle: 'Transaction History'
                        ),
                        SizedBox(
                          height: 10,
                        ),
                    ],
                 ),
               ),
          ],
        ),
      ),
    );
  }
}

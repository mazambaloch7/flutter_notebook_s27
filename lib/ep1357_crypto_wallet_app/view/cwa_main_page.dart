
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CrytoWalletAppMainPage extends StatefulWidget {
  const CrytoWalletAppMainPage({Key? key}) : super(key: key);

  @override
  State<CrytoWalletAppMainPage> createState() => _CrytoWalletAppMainPageState();
}

class _CrytoWalletAppMainPageState extends State<CrytoWalletAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor:  Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),


        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],

       ),


      body: Stack(
        children: [


          Positioned(

              left: 16,
              right: 16,
              bottom: 0,
              top: 0,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50]
                    ),
                  ),

                  Row(
                    children: [
                      
                      Icon(Ionicons.pie_chart_outline),
                      Spacer(),
                      Text("\$6543 (LAST MONTH)"),

                      //ionicons miss in pub let add in pub
                      
                    ],
                  ),

                  Container(
                    height: 42,
                    color: Colors.blue
                  ),

                  Text("My Wallets", style: TextStyle(fontSize: 28),),
                  Expanded(
                      child:
                      ListView.builder(itemBuilder: (context, index) {
                        return Container(
                          margin:  EdgeInsets.only(bottom: 8),
                          color: Colors.blueGrey,
                          child: Container(
                            height: 64,
                            margin: EdgeInsets.only(bottom: 8),
                            color: Colors.blueGrey,
                          ),
                        );
                      })),


                ],
              )
          ),


          Positioned(
            left: 16,
            right:  16,
            bottom: 16,
              child: Container(
            height: 100,
             child:  Container(
              height: 100,
              child: Stack(
                children: [


                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 24,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black
                        ),
                        child: Row(
                          //add the bottom bar other button

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.home),
                            color: Colors.white),


                            IconButton(onPressed: (){}, icon: Icon(Icons.wallet_outlined),
                            color: Colors.grey),


                            SizedBox(
                              width: 64,
                            ),

                            IconButton(onPressed: (){}, icon: Icon(Icons.credit_card_outlined),
                            color: Colors.grey),

                            IconButton(onPressed: (){}, icon: Icon(Icons.person_outline),
                            color: Colors.grey),

                          ],
                        ),
                      ),
                  ),

                  Positioned(

                    left: 0,
                      right: 0,
                      top: 0,
                      bottom: 16,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: Icon(Icons.import_export,size: 42),
                            radius: 32,
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:solar_system1/constants.dart';
import 'package:solar_system1/data.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor,gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter

          )
        ),
        child: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                     Text(
                      "Explore",
                      style: TextStyle(
                        // fontFamily: 'Avenir',
                        fontSize: 42,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                     ),
                     SizedBox(
                      height: 10,
                     ),
                      Text(
                      "Solar System",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0x7cdbf1ff),
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.left,
                     ),

                  ],
                ),
              ),
              Container(
                height: 365,
                padding: EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth:MediaQuery.of(context).size.width - 2*64 ,
                  layout: SwiperLayout.STACK,
                  pagination:SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 20,
                      space: 8
                    )
                   ),
                  itemBuilder: (context,index){
                    return Stack(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                       Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(32) ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 180,),
                                  Text(
                          planets[index].name,
                      style: TextStyle(
                          fontSize: 38,
                          color: Color(0xff47455f),
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                     ),
                      Text(
                          "Solar System",
                      style: TextStyle(
                          fontSize: 23,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.left,
                     ),
                     Row(
                      children: [
                           Text(
                            "Know More",
                      style: TextStyle(
                          fontSize: 18,
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.left,
                     ),
                     Icon(Icons.arrow_forward,color: secondaryTextColor,)
                      ],
                     )
                     
                            ],
                          ),
                          
                        ),
                        
                       ),
                       Image.asset(planets[index].iconImage),
                      ],
                    );
                  },
                
                ),
                

              )
            ],
          ) ,),
      ),
      bottomNavigationBar:
       Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
            
          ),
                  color: navigationColor,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){},
               icon: Image.asset("assets/images/menu_icon.png")
               ),
               IconButton(
              onPressed: (){},
               icon: Image.asset("assets/images/search_icon.png")
               ),
               IconButton(
              onPressed: (){},
               icon: Image.asset("assets/images/profile_icon.png")
               ),
          ],
        ),
      ),
    );
  }
}
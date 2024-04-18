import 'package:flutter/material.dart';

class MyReservation extends StatefulWidget {
  const MyReservation({super.key});

  @override
  State<MyReservation> createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation> with SingleTickerProviderStateMixin{
   TabController? _tabController;
   @override
  void initState() {
    
    super.initState();
     _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                 const  SizedBox(height: 25,),
                 const  Text('رزروهای من',style: TextStyle(fontSize: 25,color: Colors.white),),
                 const  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 56,
                      width: 382,
                      
                      decoration:const  BoxDecoration(color: Color(0xff1FEAA5),borderRadius: BorderRadius.all(Radius.circular(50),),),
                      child: TabBar(
                        controller: _tabController,
                        labelStyle:const  TextStyle(fontSize: 18),
                        indicatorWeight: 1,
                        indicatorPadding:const  EdgeInsets.symmetric(horizontal: 30),
                        labelColor: Colors.black,
                        indicatorColor:const  Color(0xff1FEAA5),
                  
                        tabs:const  [
                          Tab(text: 'رزروهای قبلی ',),
                          Tab(text: 'رزروهای فعلی',),],)
                      ),
                  ),
                  const SizedBox(height: 88,),
                  Container(
                    height: 112,
                    width: 382,
                    
                    decoration:const  BoxDecoration(color: Color(0xff827E7E),borderRadius: BorderRadius.all(Radius.circular(15),),),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,left: 30),
                      child: Row(
                        
                        children: [
                          
                           const Padding(
                             padding: EdgeInsets.only(bottom: 15,right: 10),
                             child: CircleAvatar(
                                 backgroundImage: AssetImage('images/rashid.jpg'),
                                 radius: 35,
                               ),
                           ),
                          const  SizedBox(width: 7,),
                          const  Column(
                            children: [
                              Text('رشید امانی',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('چهارشنبه 7 اسفند',style: TextStyle(fontSize: 10,color: Colors.white),),
                              Text('ساعت 9 شب',style: TextStyle(fontSize: 10,color: Colors.white),),
                              
                              


                            ],
                             
                           ),
                           const  SizedBox(width: 90,),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset('images/edite.png'),
                                  const   Text('ویرایش',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                  ],
                                ),
                                  Row(
                              children: [
                                Image.asset('images/bin.png'),
                               const  Text('لغو رزرو',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),
                              ],
                            ),
                           
                       
                          
                        ],
                      ),
                    ),
                  )

                ],
              );
  }
}

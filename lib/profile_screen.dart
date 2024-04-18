


import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       backgroundColor:const Color(0xff25262A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
             const SizedBox(height: 30,),
                    Center(
                      child: Container(
                        height: 112,
                        width: 382,
                        
                        decoration:const  BoxDecoration(color: Color(0xff25262A),borderRadius: BorderRadius.all(Radius.circular(15),),),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25,left: 30),
                          child: Row(
                            
                            children: [
                              const  Padding(
                                 padding: EdgeInsets.only(bottom: 15,right: 10),
                                 child: CircleAvatar(
                                     backgroundImage: AssetImage('images/rashid.jpg'),
                                     radius: 35,
                                   ),
                               ),
                               const SizedBox(width: 18,),
                               Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 const  Text('سلام',style: TextStyle(fontSize: 14,color: Colors.white),),
                                 const  Text('رشید امانی',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 24,
                                    width: 136,
                                    
                                    decoration:const  BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Color(0xff8DEBFC),
                                    ),
                                    child: const Center(child: Text('شماره تماس تایید شده',style: TextStyle(fontWeight: FontWeight.bold),)),
                                  )
                                  
                                  
                    
                    
                                ],
                                 
                               ),
                               
                               
                           
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  const   Divider(
                      thickness: 2,
                      height: 30,
                      
                      color: Color(0xff999494),
                    ),
                    const SizedBox(height: 55,),
                    const Text('حساب کاربری',style: TextStyle(fontSize: 18,color: Color(0xffA1A0A0),fontWeight: FontWeight.bold),),
                    const SizedBox(height: 14,),
                    Row(
                      children: [
                        Image.asset('images/profile-simple.png'),
                       const  SizedBox(width:12),
                        const Text('اطلاعات حساب کاربری',style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                        
                        const Spacer(),
                        Image.asset('images/Vector.png'),

                      ],
                    ),
                    const SizedBox(height:18),
                   const  Divider(
                      thickness: 1,
                      height: 30,
                      
                      color: Color(0xff999494),
                    ),
                   const  SizedBox(height:38),
                    Row(
                      children: [
                        Image.asset('images/exit.png'),
                      const  SizedBox(width:12),
                       const  Text('خروج از حساب کاربری',style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                        
                        const Spacer(),
                        Image.asset('images/Vector-red.png'),

                      ],
                    ),

                    
      
        ],
        
        ),
      ),
    );
  }
}
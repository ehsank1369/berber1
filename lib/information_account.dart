import 'package:flutter/material.dart';

class InformationAccount extends StatelessWidget {
  const InformationAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff25262A),
      
      appBar: AppBar(
        backgroundColor:const Color(0xff25262A),
        elevation:0,
  leading: IconButton(
    icon:const Icon(Icons.arrow_back, color:  Color(0xff1FEAA5),),
    onPressed: (){},
    
  ), 
  
  
 
),
body: Column(
    
      children: [const 
    
Center(
    
  child: Text('اطلاعات حساب کاربری',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
    
),
    
const SizedBox(height: 8),
    
const CircleAvatar(
    
  backgroundImage: AssetImage('images/rashid.jpg'),
    
  radius: 65,
    
),
    
const SizedBox(height: 8),
    
const Text('ویرایش عکس پروفایل',style: TextStyle(color: Colors.white,fontSize: 12),),
    
const SizedBox(height: 10),
    
const Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    
child: TextField(decoration: InputDecoration(
    
  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
    
  labelText: 'نام',
    
  labelStyle: TextStyle(fontSize: 20,color: Colors.white),
    
  enabledBorder: OutlineInputBorder(
    
    borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3),
    
    ),focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3 ))
    
  
    
)),),const SizedBox(height: 25),const  Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    
child: TextField(decoration: InputDecoration(
    
  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
    
  labelText: 'نام خانوادگی',
    
  labelStyle: TextStyle(fontSize: 20,color: Colors.white),
    
  enabledBorder: OutlineInputBorder(
    
    borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3),
    
    ),focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3 ))
    
  
    
),),),
    
const SizedBox(height: 25),const  Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    
child: TextField(decoration: InputDecoration(
    
  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
    
  labelText: 'شماره همراه',
    
  labelStyle: TextStyle(fontSize: 20,color: Colors.white),
    
  enabledBorder: OutlineInputBorder(
    
    borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3),
    
    ),focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25),),
    
    borderSide: BorderSide(color: Color(0xff1FEAA5),width: 3 ))
    
  
    
),),),
    
const Spacer(),
    
 ElevatedButton(style:ElevatedButton.styleFrom(minimumSize:const  Size(248, 64),backgroundColor:const  Color(0xff1feaa5),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    
  onPressed: (){}, child: const Text('ثبت',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),),
    
const SizedBox(height: 15),
    
    
    
    
    
      ],
    
    ),
    );
  }
}
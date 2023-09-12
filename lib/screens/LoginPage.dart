import 'package:flutter/material.dart';
import 'package:group_queries/colors.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isToggle= true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
body: 
Stack(
  alignment: Alignment.bottomCenter,
  clipBehavior: Clip.none,
  children: [
    
    Container(
    width: double.infinity,
    height: double.maxFinite,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: 
      [
        colorPallete.blueColor,
        colorPallete.purpleColor,
      ],
      )),
    
child:  Padding(
  padding: const EdgeInsets.all(87.5),
  child:   Image.asset("images/logo.png",alignment: Alignment.topCenter ),
),
 
  ),

  

   Positioned(
   child: SingleChildScrollView(
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
     child: Container(
   
       width: double.infinity,
       height: 650,
       decoration: BoxDecoration(
       color: Colors.white,
     borderRadius: BorderRadius.circular(20,),
     ),
   
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      SizedBox(height: 50,),
       Center(
         child: Text('Welcome to Edulaya!',
         style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
         ),
         ),
       ),
   SizedBox(height: 20,),
   
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 40),
     child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Text('UserID'),

     SizedBox(height: 23,),

     Container(
     width: 320,
   height: 50,
   decoration: ShapeDecoration(
   color: Colors.white,
   shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(20),
   ),
   shadows: [
   BoxShadow(
   color: Color(0x19000000),
   blurRadius: 8,
   offset: Offset(0, 2),
   spreadRadius: 0,
   ),
   ],
   ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10
        ),
        child: TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.person),
            
            hintText: 'Please enter your username',
            hintStyle: TextStyle(
              fontSize: 14,
   fontWeight: FontWeight.w400,
              ),
           
            
          ),
        ),
      ),
     ),
     SizedBox(height: 40,),
     Text('Password'),
     SizedBox(height: 23,),
     Container(
     width: 320,
   height: 50,
   decoration: ShapeDecoration(
   color: Colors.white,
   shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(20),
   ),
   shadows: [
   BoxShadow(
   color: Color(0x19000000),
   blurRadius: 8,
   offset: Offset(0, 2),
   spreadRadius: 0,
   ),
   ],
   ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10
        ),
        child: TextFormField(
          obscureText: isToggle,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: IconButton(onPressed: () {
              setState(() {
                isToggle=!isToggle;
              });
            },
            icon: isToggle?Icon(Icons.visibility_off):Icon(Icons.visibility),
            ),
            hintText: '●●●●●●●●●●●',
            hintStyle: TextStyle(
              fontSize: 10,
              color: Color(0x7F969696),
   fontWeight: FontWeight.w200,
              ),
           
            
          ),
        ),
      ),
     ),
   
   SizedBox(height: 68,),
   TextButton(
     onPressed: (){}, child:
   
   Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [

      GestureDetector(
        onTap: () {
         
        },
        child: Container(
          width: 200,
          height: 45,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           gradient: LinearGradient(
        begin: Alignment(1.0, 0.10),
         end: Alignment(-1, -0.0),
        colors: [
           colorPallete.purpleColor,
           colorPallete.blueColor,
           ],
           ),
         
           ),
        child:Center(
          child: Text('Login',style: TextStyle(color: Colors.white,
          fontSize: 20),),
        ),
        ),
      )
     ],
   ), 
   
   ),
   
   SizedBox(height: 50,),
   
   Center(
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
   Text('Forgot your credentials? '),
   Text('Click Here',style: TextStyle(
     color: Colors.blue,
   ),),
     ],),
     ),
   
      ],
   
     ),
   ),
   
     ],
    
   ),
   
   
   
   
       ),
   ),
   ),
  ],
    ),

  
)


       
      );
   
  }
}
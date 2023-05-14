

import 'dart:js_util';

import 'package:flutter/material.dart';

class DrawerBox extends StatelessWidget {
  const DrawerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        //padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              
              flex: 3,
              child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 205, 205, 205),
              
              child: Column(
                
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
               
                children: [
                  CircleAvatar(
                  maxRadius: 40,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                  
                  ),
                  SizedBox(height: 10,),
                  Text("AnnaBella Mayer"),
                  SizedBox(height: 20,),
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    
                   children: [
                    Container(
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                     ),
                     height: 30,
                     width: 150,
                      child:
                       Text("Your Score 200 >",
                       style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                       ),
                        alignment: Alignment.center,
                    ),
                   
                   ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(child: Container(
                      width: double.infinity,
                      height: 3,
                      
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Row(
                        children: [ 
                          Expanded(
                            flex: 3,
                            child: Container(
                              
                              color: Color.fromARGB(255, 180, 177, 177),
                          ),
                          
                          ),
                          
                          Expanded(
                    flex:3,
                    child: Container(
                      
                  color: Color.fromARGB(255, 155, 39, 39),
                  
                  )
                  ),
                  Expanded(
                    
                    flex:3,
                    child: Container(
                  color: Color.fromARGB(255, 183, 105, 105),
                  )
                  ),
                  
                        ],
                      ),
                    )),
                    
                ],
                
              ),
              
              
            )),
            Divider(),
            
             Expanded(
            
              flex: 8,
              child: Container(
                
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              
              child: Column(
                
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text("My Wallet",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text("My Trips",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text("Invite Friends",
                    
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text("Promotions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                    
                  ),

                ],
              ),
            ),
            ),
            Divider(),
             Expanded(
              flex: 1,
              child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Settings"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white70,
                  foregroundColor: Colors.black,
                  ),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("User Guide"),
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.white70,
                   foregroundColor: Colors.black,
                   ),
                   
                   ),
                ],
              ),
            ),
            
            ),
           
                       
          ],
          
          
        ),
        
        
      ),
      
    );
    
  }
}
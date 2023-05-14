import 'dart:collection';
import 'dart:html';

import 'package:day13/Widget/page2.dart';
import 'package:day13/drawebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey();
  final GlobalKey<FormState>_formkey=GlobalKey();
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  bool isObsecure= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBox(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(onPressed: (){
          _scaffoldKey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu)),
        
      ),
      body: 
      Container(
        
       // margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
        padding: EdgeInsets.all(20),
        
        color: Color.fromARGB(255, 255, 255, 255),
        
        width: double.infinity,
        
      
        child: Form(
          
          key: _formkey,
          child: Column(
            
            children: [
              
             
              SizedBox(
                height: 10,
              ),
              TextFormField(
                scrollPadding: EdgeInsets.all(10.0),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.amberAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepPurpleAccent),
                    ),
                    prefixIcon: Icon(Icons.mail,color: Colors.deepPurpleAccent,) ,
                    hintText: "Put Your Email Here",
                    labelText: 'Email',
                    helperText: 'Example: rabibkhan@gmail.com',
                ),
              ),
              
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "Strong";
                  };
                 
                  if(value.length<6){
                    return "Password should be more than 6";
                  };
                  if(value.length>12){
                    return "Password should be more than 6";
                  };
                },
                obscureText: isObsecure ,
                obscuringCharacter: "*",
                keyboardType: TextInputType.none,
                controller: passController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.amberAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepPurpleAccent),
                    ),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isObsecure=!isObsecure;
                      });
                    }, icon: Icon(
                      isObsecure==true? Icons.visibility:  Icons.visibility_off)),
                    prefixIcon: Icon(Icons.password_sharp, color: Colors.deepPurpleAccent,) ,
                    hintText: "Put an strongest password",
                    labelText: 'Password',
                    helperText: 'Password should be in 6-12 charactestics',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: 600,
                child:  ElevatedButton(
                onPressed: (){
                if(_formkey.currentState!.validate()){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page2()));
                }
                else{
                  print("Password Eto Kom Keno");
                }
               /*print("${nameController.text}");
                print("${emailController.text}");
                print("${passController.text}");*/
              },
              style: ElevatedButton.styleFrom(
                
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))
                  
              ), child: Text("Submit")),
              ),
              
              SizedBox(
                height: 30,
              ),
              
              Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.red,
                  ),),
                  
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: Row(
                      
                      children: [
                        Container(
                          child: ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))
                  
              ), 
                  child: Text("Sign In",
                  
                  )),
                        )
                      ],
                    )
                    
                  )
                ]),
              )
             
              
            ],
          ),
        ),
      ),
    );
  }
}
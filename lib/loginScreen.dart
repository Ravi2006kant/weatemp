import 'package:flutter/material.dart';
import 'package:task_manager/main.dart';


class Loginscreen extends StatefulWidget{
  const Loginscreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<Loginscreen> {
   final emailControl = TextEditingController();
   final passControl = TextEditingController();
   
  @override


  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,
        color: Colors.white,),),
      ),backgroundColor: Colors.pink,),

      body: 
         Center(
           child: SizedBox(
            width: 325,
            height: 400,
             child: Card(
              
              elevation: 3,
              color: Colors.pink,
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: emailControl,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.pink,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.email_rounded),
                              
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(55),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.pinkAccent
                                  
                                )
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(55),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.pink,
                                )
                              )
                          ),
                                     
                        ),
                      ),
             
                SizedBox(height: 30,),
             
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          
                          controller: passControl,
                            keyboardType: TextInputType.number,
                            
                            obscureText: true,
                            decoration: InputDecoration(
                              //  enabledBorder: ,
                              //  focusedBorder: ,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.lock_outline_rounded),                            
                              suffixIcon: Icon(Icons.remove_red_eye_rounded),
                              suffixIconColor: Colors.blueGrey,
                               hintText: "Enter Password",
                               enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(55),
                                borderSide: BorderSide(color: Colors.pinkAccent,width: 1)
                               ),
                        
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(55),
                                borderSide: BorderSide(
                                  color: Colors.pink,
                                  width: 2,
                                  
                                )
                              ),
                              // focusedBorder:UnderlineInputBorder(
                              //   borderRadius: BorderRadius.circular(55),
                              //   borderSide: BorderSide(
                              //     width: 5,
                              //     color: Colors.pinkAccent
                              //   )
                              // )
                        
                            ),
                        ),
                      ),
             
                    SizedBox(height: 30,),
             
                      ElevatedButton(onPressed: (){
                        final email = emailControl.text.trim();
                        final pass = passControl.text.trim();
                            if(email == "hello@gmail.com" && pass == "1234"){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Either Email or password is wrong")));
                            }                      
                      }, child: Text("Login")),
                    
                    ],
                  ),
             ),
           ),
         ),
           
         
            
    );

  }
}

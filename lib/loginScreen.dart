import 'package:flutter/material.dart';
import 'package:weatemp/main.dart';

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
        child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,
        color: Colors.white,),),
      ),backgroundColor: Colors.pink,),

      body: 
         Center(
           child: Card(
            elevation: 3,
            color: Colors.amberAccent,
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Email"),
                    
                    TextField(
                      controller: emailControl,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                           labelText: "Email",
                           filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.email_rounded),
                          
                      ),
           
                    ),
           
              SizedBox(height: 30,),
           
                    TextField(
                      
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
                           labelText: "Password"
                        ),
                    ),
           
                  SizedBox(height: 30,),
           
                    ElevatedButton(onPressed: (){
                      final email = emailControl.text.trim();
                      final pass = passControl.text.trim();
                          if(email == "hello@gmail" && pass == "1234"){
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
           
         
            
    );

  }
}

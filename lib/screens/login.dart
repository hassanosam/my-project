import 'package:finalproject/screens/forgetpassword.dart';
import 'package:finalproject/screens/signup.dart';


import 'package:flutter/material.dart';
// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height:150),
              TextField(
                decoration:  InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,

                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide:const BorderSide(
                      color: Colors.blue,
                      width: 1.0,

                    ), 
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                obscureText: true,
                decoration:  InputDecoration(
                  hintText: 'password',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,

                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide:const BorderSide(
                      color: Colors.blue,
                      width: 1.0,

                    ), 
                  ),
                ),
              ),

              const SizedBox(height: 50,),
              MaterialButton(
                elevation: 5.0,
                color: Colors.blue,
                padding:const EdgeInsets.symmetric(vertical: 20,
                horizontal: 80),
            
                // ignore: sort_child_properties_last
                child:const Text('login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
            
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,

              ),
                

                onPressed:(){
                
              },
              ),
              const SizedBox(height: 20,),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const Password();
                    
                  }, ) );
                },
                child: const Text('Forget the password ?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,

                ),
                ),
                
              ),
              const SizedBox(height: 20,),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SignUp();
                    
                  }, ) );
                },
                child: const Text('Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,

                ),
                ),
                
              ),


            ],
          ),
        ),
      ),
    );
  }
}
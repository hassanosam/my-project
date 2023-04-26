import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 15,),

            child: Form(child: Column(children: [
              const SizedBox(height: 20),
              TextFormField(decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width:1.0 )
                )
              ),
              ),
              const SizedBox(height: 20),
              TextFormField(
              
                decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width:1.0 )
                )
              ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'passwored',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width:1.0 )
                )
              ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                elevation: 4.0,
               color: Colors.blue,
               textColor: Colors.white,

               padding:const EdgeInsets.symmetric(vertical: 20,
                horizontal: 70),
               onPressed: (){},
               shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,

               ),
                child: const Text('signup' ,style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
               ),

               )
               ),
          Container(
            margin: const EdgeInsets.all(15),
            child:Row( children: [
            const Text('Already have an account?'),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('login');
              },
              child: const Text('click here', style:TextStyle(color: Colors.blue),),)
          ],) )
          
          
          ],)),
          )
        ],
      ),

      
    );
  }
}
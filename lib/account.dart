import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  onChangeFunction1(bool newvalue1){
    setState(() {
      valNotify1 = newvalue1;
    });
    
  }
  onChangeFunction2(bool newvalue2){
    setState(() {
      valNotify2 = newvalue2;
    });
    
  }
  onChangeFunction3(bool newvalue3){
    setState(() {
      valNotify3 = newvalue3;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text(
          'profile',
          style: TextStyle(color:Colors.black,fontSize: 22.0
           ),
        ),
        leading: IconButton(onPressed: () {
      
       },
       icon:Icon(
        Icons.arrow_back,
        color: Colors.white,
       ) ,),
      ),
      body: Container(
        padding:const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text('Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
              ],
            ),
            Divider(height: 20,thickness: 1),
            SizedBox(height: 10),
            buildAccountOption(context, 'Change password'),
            buildAccountOption(context, 'Content settings'),
            buildAccountOption(context, 'Social'),
            buildAccountOption(context, 'Language'),
            buildAccountOption(context, 'Privacy and Security'),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.volume_up_outlined,color:Colors.blue),
                SizedBox(width: 10),
                Text('Notifications',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  ))
                  

              ],
            ),
            Divider(height: 20,thickness: 1),
            SizedBox(height: 10),
            buildNotificationOption('theme Dark',valNotify1,onChangeFunction1),
            buildNotificationOption('Account Active',valNotify2,onChangeFunction2),
            buildNotificationOption('Opportunity',valNotify3,onChangeFunction3),
            SizedBox(height: 50),
            Center(
              child: OutlinedButton (
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )

                ),
                onPressed: () {
                
                },
                child: Text('SIGN OUT',style: TextStyle(
                  fontSize: 16,
                   letterSpacing: 2.2,
                   color: Colors.black
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
  Padding buildNotificationOption(String title,bool value,Function onchangeMethod){
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600]
          )),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newvalue){
                onchangeMethod(newvalue);
              },
            ),
          )

        ],
      )
     ,);
  }
  
  GestureDetector buildAccountOption(BuildContext context,String title){
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder:( BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Option 1'),
                Text('Option 2')
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              },
               child: Text('Close'))
            ],
          );

        });

        
        
      },
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600]
          )),
        Icon(Icons.arrow_forward_ios,color: Colors.grey,),

        ],

        
      ),
      ),

    );
  }
}


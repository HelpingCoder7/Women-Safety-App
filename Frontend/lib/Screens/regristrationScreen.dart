import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController phoneController =  TextEditingController();


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    void sendcrend(){
      final uri = Uri.parse("http://127.0.0.1:8000/postotp");
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
             Stack(
               clipBehavior: Clip.none,
                 children:[ Padding(
               padding: const EdgeInsets.only(top:50,left: 130),
               child: Image.asset("assets/images/signupimg.jpeg",width: width*1.2),
             ),
               Padding(
                 padding: const EdgeInsets.only(top: 280),
                 child: Image.asset("assets/images/signupimg2.png",width: width*0.35,),
               ),
                   const Padding(
                     padding: EdgeInsets.only(top: 150),
                     child: Text("Signup",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                   )
    ]
             ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone_android)),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: GestureDetector(child: Container(
                height: height*0.07,
                width: width*0.7,
                decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.pink,Colors.yellow])),
                child:const Center(child: Text("Create Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),),
            )
          ],
        ),
      ),
    );

}
}

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;



    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Rakshikha",style: TextStyle(fontSize: height/15,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Text("Find Out who you are",style: TextStyle(fontSize: height/40),),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: height*0.65,
              width: width*0.88,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                boxShadow:[BoxShadow(color: Colors.black26,offset: Offset(5.0, 5.0),blurRadius: 5,spreadRadius: 5)]
                  ),
              child:SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text("Start Your Safety ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                      const SizedBox(height: 80,),
                      TextField(controller: usernameController ,decoration: const InputDecoration(hintText: "Phone Number",border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),prefixIcon: Icon(Icons.phone_android)
                  ),),

                      const SizedBox(height: 30),

                      TextField(controller: passwordController ,obscureText: false,decoration: const InputDecoration(hintText: "Password",border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),prefixIcon: Icon(Icons.password),
                      ),),

                      const SizedBox(height: 50,),

                      GestureDetector(
                        onTap: () => {},
                         child: Container(
                           height: height*0.07,
                           width: width*0.7,
                           decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.pink,Colors.yellow]),
                               borderRadius: BorderRadius.all(Radius.circular(30)),
                               boxShadow: [BoxShadow(color: Colors.purpleAccent,offset: Offset(2, 2))]),
                           child: const Center(
                             child: Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                           ),
                         ),
                      ),

                    ],
                  ),
                ),
              ),
              ),

            ),
          ),

        ],),
    );

  }


}


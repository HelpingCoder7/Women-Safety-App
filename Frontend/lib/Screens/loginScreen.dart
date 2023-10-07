// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'regristrationScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phonenumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    void handleloginuser() async {
      Map<String, dynamic> request = {
        "phone_number": phonenumberController.toString(),
        "password": passwordController.toString()
      };
      final uri = Uri.parse("http://127.0.0.1:8000/loginuser/");

      try {
        final response = await http.post(uri, body: request);

        if (response.statusCode == 302) {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
        } else {
          print("not ok");
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: <Widget>[
              Text(
                "Rakshikha",
                style:
                    TextStyle(fontSize: height / 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Find Out who you are",
                style: TextStyle(fontSize: height / 40),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: height * 0.65,
                    width: width * 0.88,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(5,5),
                              blurRadius: 2,
                              spreadRadius: 5)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Text(
                              "Start Your Safety ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          TextField(
                            controller: phonenumberController,
                            decoration: const InputDecoration(
                                hintText: "Phone Number",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                prefixIcon: Icon(Icons.phone_android)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: passwordController,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () => {},
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.7,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.pink, Colors.yellow]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.purpleAccent,
                                        offset: Offset(2, 2))
                                  ]),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Do not have account  "),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegistrationScreen()));

                                  },
                                  child: const Text(
                                    "Signup",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
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

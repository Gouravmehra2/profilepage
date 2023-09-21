import 'package:flutter/material.dart';
import 'package:profilepage/ProfileDisableField/disable_input_field.dart';
import 'package:profilepage/button/button.dart';
void main(){
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home()
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
        title: const Text('Profile Page',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        leading: const Icon(Icons.notifications,color: Colors.black),
        backgroundColor: Colors.deepOrangeAccent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings,color: Colors.black),
          )
        ],
      ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 130,height: 130,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            image:DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/instagram.png')
                            )
                          ),
                        ),
                        Positioned(
                          bottom:0,
                            right: 0,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.edit,color: Colors.black,),
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              button(Textdata: 'Edit Profile',),
              DisableInputField(text: 'Name',value: 'Gourav',),
              const SizedBox(height: 10,),
              DisableInputField(text: 'Age',value: '23',),
              const SizedBox(height: 10,),
              DisableInputField(text: 'Gender',value: 'Male',),
              const SizedBox(height: 10,),
              DisableInputField(text: 'Phone',value: '7710567945',),
              const SizedBox(height: 10,),
              DisableInputField(text: 'Email',value: 'codergourav@gmail.com',),
              const SizedBox(height: 10,),
              DisableInputField(text: 'City',value: 'Ludhiana',),
              button(Textdata: 'Logout',),
              const Divider(thickness: 3,),
              Row(
                children: const [
                  Text('Connect With Us : -->',style: TextStyle(fontSize: 30),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0,20, 0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/instagram.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/facebook.png'),
                    ),
                  ),Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/gmail.png'),
                    ),
                  ),Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/twitter.png'),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}




















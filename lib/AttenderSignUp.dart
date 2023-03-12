import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled4/HomeScreen.dart';
import 'package:untitled4/PatientLogin.dart';

class AttenderSignUp extends StatefulWidget {
  const AttenderSignUp({Key? key}) : super(key: key);

  @override
  State<AttenderSignUp> createState() => _AttenderSignUpState();
}

class _AttenderSignUpState extends State<AttenderSignUp> {
  @override
  Widget build(BuildContext context) {
    String patientName ="" ;
    String careTakerName="" ;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(9),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [  Image.asset('assets/images/image 12.png' ), Text(
                    'DIGITAL ASSISTANT',
                    style: TextStyle(fontSize: 30.0,color: Color.fromARGB(213, 166, 41, 0)),
                  )   ],)),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'ATTENDER SIGN UP',
                    style: TextStyle(fontSize: 30.0,color: Color.fromARGB(213, 166, 41, 0)),
                  )),
              Container(

                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    patientName = value ;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Attender Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  onChanged: (value) {
                    careTakerName = value ;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Attender Phone No',
                  ),
                ),
              ),
              Container(
                  height: 90,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(primary: Colors.black,backgroundColor: Color.fromARGB(213, 166, 35, 0)),
                    child: const Text('Sign Up', style:TextStyle(fontSize: 20.0),),
                    onPressed: () async{
                      await FirebaseFirestore.instance
                          .collection('attender')
                          .add({'AttenderName': patientName,'AttenderPhoneNo':careTakerName});
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen(),),
                      );
                    },
                  )
              ),
              Row(
                children: <Widget>[
                  const Text('Have an account?'),
                  TextButton(
                    child: const Text(
                      'Login',
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.pop(context);
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(primary: Colors.black,backgroundColor: Color.fromARGB(213, 166, 35, 0)),
                  child: const Text('Patient Login', style:TextStyle(fontSize: 20.0),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientLogin()),
                    );
                  },
                ),
              ),

            ],
          )),
    );
  }
}

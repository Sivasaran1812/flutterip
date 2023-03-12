import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled4/AttenderSignUp.dart';
import 'package:untitled4/HomeScreen.dart';
import 'package:untitled4/PatientLogin.dart';

class AttenderLogin extends StatefulWidget {
  const AttenderLogin({Key? key}) : super(key: key);

  @override
  State<AttenderLogin> createState() => _AttenderLoginState();
}

class _AttenderLoginState extends State<AttenderLogin> {
  Map<String, Object> loginmap = {};
  getLoginDetails() async{
    FirebaseFirestore.instance.collection("attender").get().then((myMockData) {
      if(myMockData.docs.isNotEmpty){
        for(int i=0;i<myMockData.docs.length ; i++){
          print(myMockData.docs[i].data());
          loginmap[myMockData.docs[i].data()['AttenderName']]=myMockData.docs[i].data()["AttenderPhoneNo"] ;
        }
      }
      print(loginmap);
    });
  }

  @override
  void initState() {
    super.initState();
    getLoginDetails();
  }

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
                    'ATTENDER LOGIN',
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
                    child: const Text('Login', style:TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      print(patientName);
                      print(careTakerName) ;
                      if(!loginmap.containsKey(patientName)){
                        print("not registered") ;
                        // you have not registered yet
                      }
                      else if(loginmap[patientName] != careTakerName){
                        print("wrong Care taker name") ;
                      }
                      else if(loginmap.containsKey(patientName) && loginmap[patientName] == careTakerName){
                        //Successfully logged in
                        print("logged in") ;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen(),),
                        );
                      }
                    },
                  )
              ),
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign UP',

                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AttenderSignUp(),),
                      );
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

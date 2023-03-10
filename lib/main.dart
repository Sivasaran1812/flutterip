import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled4/login.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}
// void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  Map<String, Object> loginmap = {};
  getLoginDetails() async{
    FirebaseFirestore.instance.collection("patient").get().then((myMockData) {
      if(myMockData.docs.isNotEmpty){
        for(int i=0;i<myMockData.docs.length ; i++){
          print(myMockData.docs[i].data());
          loginmap[myMockData.docs[i].data()['PatientName']]=myMockData.docs[i].data()["Attender"] ;
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

    return Padding(
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
                  'LOGIN',
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
                  labelText: 'Patient Name',
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
                  labelText: 'Caretaker Name',
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
                        MaterialPageRoute(builder: (context) => Login(),),
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
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}


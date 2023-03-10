import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

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
  TextEditingController patientnameController = TextEditingController();
  TextEditingController caretakerpasswordController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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

                controller: patientnameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Patient Name',
                ),
              ),
            ),
            Container(

              padding: const EdgeInsets.all(10),
              child: TextField(

                controller: phonenoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: caretakerpasswordController,
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
                    print(patientnameController.text);
                    print(caretakerpasswordController.text);
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
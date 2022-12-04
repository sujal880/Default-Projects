import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/log_design.dart';
import 'package:untitled/signup.dart';
main(){
  runApp(Temp());
}
class Temp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login10(),
    );
  }

}
class Login10 extends StatefulWidget {
  const Login10({Key? key}) : super(key: key);

  @override
  State<Login10> createState() => _LoginState();
}
class _LoginState extends State<Login10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text('Login')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp1()));
            }, child: Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}

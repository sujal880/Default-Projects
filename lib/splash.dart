//Wap in Flutter To Design A App
import 'package:flutter/material.dart';
main(){
  runApp(Log_In());
}
class Log_In extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SplashState();
}
class SplashState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Log_Out())
      );
    }
    );
  }

}
class Log_Out extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Login'),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle),
                    hintText: 'Name',
                    label: Text('User-Name',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.key),
                    hintText: 'Password',
                    label: Text('Password',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>HomeScreen())
                    );
                  },
                      child: Text('Login',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder:(context)=>SignUp())
                    );
                  }, child: Text('Sign Up',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

 void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Text("login screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 35,
              color: Colors.teal,
              fontWeight: FontWeight.bold
             ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'enter email',
                      prefixIcon: Icon(Icons.email),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (String value){
            
                    },
                    validator: (value){
                      return value!.isEmpty ? 'please enter email' : null;
                    },
            
            
                  ),
            
                  SizedBox(height: 30,),
                  
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'enter password',
                      prefixIcon: Icon(Icons.password),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (String value){
            
                    },
                    validator: (value){
                      return value!.isEmpty ? 'please enter password' : null;
                    },
            
            
                  ),
                      SizedBox(height: 30,),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                  child: Text('Login'),
                  color: Colors.teal,
                  textColor: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}



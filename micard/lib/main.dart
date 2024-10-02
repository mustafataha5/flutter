import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,

        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red[200],
                backgroundImage:   AssetImage("images/me256.png") ,
              ),
              Text("Mustafa Taha",
              style: TextStyle(
                fontFamily: 'Satisfy',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold, 
              ) ,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Flutter Developer",
                 style: TextStyle(
                fontFamily: 'SourceCodePro-VariableFont_wght',
                color: Colors.teal.shade100,
                letterSpacing: 2.5 ,
                fontSize: 20,             
                ),
              ),
              SizedBox(child: Divider(color: Colors.teal[50],),
                height: 20,
                width: 150,
                ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
               
                child: ListTile(
                   
                      leading: Icon(Icons.phone ,
                      color: Colors.teal,
                      size: 15,
                      ),
                    
                      title:   Text("+972 568 512 530",
                        style: TextStyle(
                          color: Colors.teal.shade200,
                          fontSize: 15,
                        ),
                      ),
                    
                ),
              ),
               Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: ListTile(
                   
                    leading:   Icon(Icons.email  ,
                      color: Colors.teal,
                      size: 15,
                      ),
                      
                    title:   Text("mustafa@mail.com",
                        style: TextStyle(
                          color: Colors.teal.shade200,
                          fontSize: 15,
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
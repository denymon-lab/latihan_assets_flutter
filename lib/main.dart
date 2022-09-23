import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: const Text('Belajar Asset')),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bg_beach.jpg"),
                  ),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0)),
                  color: Colors.redAccent,
                ),
              ),

              const Positioned(
                top: 50,
                right: 30,
                height:140,
                width: 140,
                child: CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/denymon.png'),
                  radius: 100,
                ),
              ),
              const Positioned(
                top: 140,
                left: 40,
                height:250,
                width: 250,
                child: Text('Hi, Deny',
                  style: TextStyle( color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
              ),
              ),
              ),
               Positioned(
                top: 200,
                height:160,
                width: 360,
                child:  Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/white.jpg"),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              const Positioned(
                top: 220,
                height:250,
                width: 250,
                child: Text("Hallo Button",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,
                    fontSize: 20, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                top: 260,
                height:250,
                width: 250,
                child: Text("Pencet Saya",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,
                  ),
                ),
              ),
               Positioned(
                top: 300,
                height:30,
                width: 250,
                   child: SizedBox(
                       height: 18.0,
                       width: 18.0,
                       child: ElevatedButton.icon(
                         icon: const Icon(Icons.abc, color: Colors.black,),  //icon data for elevated button
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                           primary: Colors.amber, // Background color
                         ),
                         label: const Text("Pesan Text Sekarang",
                           style: TextStyle(fontSize: 16,
                               color: Colors.black),
                         ), //label text
                    )
                   )
                )
            ],
          ),
    )
    );

  }
}






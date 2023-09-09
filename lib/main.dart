import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyDesign(),
    );
  }
}

class MyDesign extends StatelessWidget {
  const MyDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Design'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade300,
        height: 250,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blue),
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10.0)
                    ),
                height: double.infinity,
                width: 140,
                alignment: Alignment.center,
                child: Text('Image'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyContainer(
                    name: "Name", 
                    bgColor: Colors.green.shade100, 
                    bdColor: Colors.green),
                   MyContainer(
                    name: "Description", 
                    bgColor: Colors.purple.shade100, 
                    bdColor: Colors.purple),
                     MyContainer(
                    name: "Price", 
                    bgColor: Colors.yellow.shade100, 
                    bdColor: Colors.yellow)

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String name;
  final Color bgColor;
  final Color bdColor;

  const MyContainer({super.key, required this.name, required this.bgColor, required this.bdColor});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
    border: Border.all(width: 1.0, color: bdColor),

          color: bgColor,
          borderRadius: BorderRadius.circular(10.0)),
      alignment: Alignment.center,
      child: Text(name
      ),
    );
  }
}

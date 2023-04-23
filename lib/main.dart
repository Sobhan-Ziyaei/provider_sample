import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/main_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      child: Consumer<MainProvider>(
        builder: (context, provider, child) {
        return HomePage(provider);
      },),
      );
  }
}

Widget HomePage(MainProvider provider){
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${provider.number}'),
              ElevatedButton(
                onPressed: () {
                  provider.getcounter() ;
                },
                child: Text('add number'),
              ),
              ElevatedButton(
                onPressed: () {
                  provider.getResetNumber() ;
                },
                child: Text('Reset number'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
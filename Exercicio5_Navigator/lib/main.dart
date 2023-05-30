import 'package:flutter/material.dart';
import 'login_page.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'FinanciFy',
      theme: ThemeData(
        primarySwatch: myAmber,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: myAmber),
        ),
      ),
      home: const Login(),
    );
  }
}



//------------------------------------------------------------------------------
MaterialColor myAmber = MaterialColor(0xFFFFB300,<int, Color>{
  50: Colors.amber[50]!, // tons da cor
  100: Colors.amber[100]!,
  200: Colors.amber[200]!,
  300: Colors.amber[300]!,
  400: Colors.amber[400]!,
  500: Colors.amber[500]!,
  600: Colors.amber[600]!,
  700: Colors.amber[700]!,
  800: Colors.amber[800]!,
  900: Colors.amber[900]!,},);
//------------------------------------------------------------------------------
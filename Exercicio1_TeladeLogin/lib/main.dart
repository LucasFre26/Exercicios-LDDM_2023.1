import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      home: Scaffold(
        appBar: AppBar(

        ),

        drawer: const Drawer(),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
              label: 'Minha Conta',
            )
          ],
        ),

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            )
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget> [
                    const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(onPressed: (){}, child: const Text('Entrar')),

                    const SizedBox(
                      height: 5,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text('Novo por aqui?',
                          style: TextStyle(
                            fontSize: 15,
                        ),),

                        TextButton(onPressed: (){}, child: const Text('Crie sua conta aqui'))
                      ],
                    ),
                  ],
                )
            ),
          )
        ),
      )
    );
  }
}

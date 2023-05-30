import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

bool _passwordVisible = false;
bool _emailNotification = false;
bool _phoneNotification = false;
double _fontSize = 20.0;

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _dataNascimentoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  String _generoSelecionado = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Cadastro',
      home: Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Minha Conta',
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0), // Espaçamento desejado
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        controller: _nomeController,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          labelText: 'Nome',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        maxLength: 30,
                        style: TextStyle(color: Colors.black, fontSize: _fontSize),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: _dataNascimentoController,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          labelText: 'Data de Nascimento',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.datetime,
                        maxLength: 8,
                        style: TextStyle(color: Colors.black, fontSize: _fontSize),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: _dataNascimentoController,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          labelText: 'Telefone',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        maxLength: 8,
                        style: TextStyle(color: Colors.black, fontSize: _fontSize),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: _emailController,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 40,
                        style: TextStyle(color: Colors.black, fontSize: _fontSize),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: _senhaController,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelStyle: const TextStyle(color: Colors.black),
                          labelText: 'Senha',
                          suffixIcon: IconButton(
                            icon: _passwordVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        maxLength: 8,
                        style: TextStyle(color: Colors.black, fontSize: _fontSize),
                        obscureText: !_passwordVisible,
                        onChanged: (String senha) {},
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Text(
                            'Gênero: ',
                            style: TextStyle(fontSize: _fontSize),
                          ),
                          const SizedBox(width: 45),
                          Text(
                            'Feminino',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                          Radio<String>(
                            value: "f",
                            groupValue: _generoSelecionado,
                            onChanged: (String? value) {
                              setState(() {
                                _generoSelecionado = value!;
                              });
                            },
                          ),
                          Text(
                            'Masculino',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                          Radio<String>(
                            value: "m",
                            groupValue: _generoSelecionado,
                            onChanged: (String? value) {
                              setState(() {
                                _generoSelecionado = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Notificações',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'E-mail',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                          Switch(
                            value: _emailNotification,
                            onChanged: (bool value) {
                              setState(() {
                                _emailNotification = value;
                              });
                            },
                          ),
                          Text(
                            'Celular',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                          Switch(
                            value: _phoneNotification,
                            onChanged: (bool value) {
                              setState(() {
                                _phoneNotification = value;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            'FontSize',
                            style: TextStyle(
                              fontSize: _fontSize,
                            ),
                          ),
                          const SizedBox(width: 40),
                          Slider(
                            value: _fontSize,
                            min: 10.0,
                            max: 20.0,
                            onChanged: (double value) {
                              setState(() {
                                _fontSize = value;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(fontSize: _fontSize),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

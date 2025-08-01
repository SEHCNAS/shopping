import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/Pages/signup_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(170, 232, 228, 1),
          padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          child: Column(
            children: <Widget>[
              Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(215, 244, 237, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Bem-vindo",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Faça login para continuar"),
                            ],
                          ),
                          TextButton(
                            child: Text("Criar conta"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                              // Implementar ação de esqueci minha senha
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      TextFormField(
                        //autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        //autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text("Esqueci minha senha"),
                          onPressed: () {
                            // Implementar ação de esqueci minha senha
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                          child: Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "- ou -",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.google),
                  label: const Text('Realizar login com Google'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.facebook),
                  label: const Text(
                    'Realizar login com Facebook',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
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

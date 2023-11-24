import 'package:ekspresiku/main_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  String _username = "ekspresiku";
  String _password = "12345";

  @override
  Widget build(BuildContext context) {x
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.cente r,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                    Container(
                      width: 330,
                      height: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/login.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      // Warna latar belakang Container
                      child: Column(
                        children: [
                          Text(
                            'Masuk',
                            style: TextStyle(
                              color: Colors.black, // Warna teks "Masuk" (hitam)
                              fontSize: 24.0,
                              fontWeight:
                                  FontWeight.bold, // Ukuran teks "Masuk"
                            ),
                          ),
                          SizedBox(
                              height:
                                  5.0), // Spasi antara teks "Masuk" dan "Masukkan akun anda"
                          Text(
                            'Masukkan akun anda',
                            style: TextStyle(
                              color: Colors
                                  .grey, // Warna teks "Masukkan akun anda" (abu-abu)
                              fontSize:
                                  16.0, // Ukuran teks "Masukkan akun anda"
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30.0, left: 30.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2))
                              ]),
                          child: TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                                hintText: "Username",
                                prefixIcon: Icon(Icons.account_box_rounded,
                                    color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2))
                              ]),
                          child: TextField(
                            obscureText: _obscureText,
                            controller: _passwordController,
                            decoration: InputDecoration(
                                hintText: "Kata Sandi",
                                prefixIcon: Icon(Icons.password_outlined,
                                    color: Colors.black),
                                suffixIcon: togglePassword(),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          )),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        String username = _usernameController.text;
                        String password = _passwordController.text;

                        if (username.isNotEmpty && password.isNotEmpty) {
                          if (username == _username && password == _password) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Login Gagal'),
                                  content:
                                      Text('Username atau password salah.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Tutup'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        } else {
                          // Validasi bidang kosong
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Login Gagal'),
                                content:
                                    Text('Username dan password harus diisi.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Tutup'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text('Masuk'),
                    ),
                    SizedBox(
                      height: 200,
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

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        icon:
            _obscureText ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
        color: Colors.grey);
  }
}

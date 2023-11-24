import 'package:flutter/material.dart';
import 'users/login_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart'
import 'package:ekspresiku/page/main_screen.dart'; // Import file halaman1.dart
import 'package:ekspresiku/page/news_screen.dart'; // Import file halaman2.dart
import 'package:ekspresiku/users/logout_screen.dart'; // Import file halaman3.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          SplashScreen(), // Tampilkan splash screen saat aplikasi pertama kali dijalankan.
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(),
        '/main': (context) => MainScreen(), // Tambahkan route ke HalamanSatu
        '/news': (context) => NewsScreen(), // Tambahkan route ke HalamanDua
        '/logout': (context) => LogoutPage(), // Tambahkan route ke HalamanTiga
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan delay untuk simulasi splash screen.
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0, // Atur lebar sesuai kebutuhan Anda
              height: 200.0, // Atur tinggi sesuai kebutuhan Anda
              child: Image.asset('assets/logo.png'), // Gambar logo
            ),
            SizedBox(height: 3.0),
            SpinKitThreeBounce(
              color: Colors.black, // Ganti dengan warna yang Anda inginkan
              size: 30.0, // Sesuaikan ukuran sesuai kebutuhan Anda
            ),
          ],
        ),
      ),
    );
  }
}

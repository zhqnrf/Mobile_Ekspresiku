import 'package:ekspresiku/page/main_screen.dart';
import 'package:ekspresiku/users/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ekspresiku/page/news_screen.dart';
import 'package:ekspresiku/users/logout_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

List<String> titleAppbar = ['Ekspresi', 'Informasi', 'Profil'];
int index = 0;
List<Widget> dataScreen = [MainScreen(), NewsScreen(), ProfilePage()];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          titleAppbar[index],
          style:
              TextStyle(color: Colors.white), // Atur warna teks menjadi putih
        ),
      ),
      body: dataScreen[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.amber,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.newspaper, size: 30),
          Icon(Icons.account_circle_sharp, size: 30),
        ],
        onTap: (number) {
          setState(() {
            index = number;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 220,
              width: 100,
              color: Colors.black,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/logoamber.png"), // Ganti dengan path gambar Anda
                    // Sesuaikan dengan preferensi Anda
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 0; // Mengarahkan pengguna ke halaman utama
                  Navigator.pop(context); // Menutup Drawer setelah navigasi
                });
              },
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home), // Icon di samping teks
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 1; // Mengarahkan pengguna ke halaman utama
                  Navigator.pop(context); // Menutup Drawer setelah navigasi
                });
              },
              child: ListTile(
                title: Text('Information'),
                leading: Icon(Icons.newspaper), // Icon di samping teks
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 2; // Mengarahkan pengguna ke halaman utama
                  Navigator.pop(context); // Menutup Drawer setelah navigasi
                });
              },
              child: ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.account_circle), // Icon di samping teks
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        LogoutPage())); // Mengarahkan ke LogoutPage
              },
              child: ListTile(
                title: Text('Exit'),
                leading: Icon(Icons.exit_to_app), // Icon di samping teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}

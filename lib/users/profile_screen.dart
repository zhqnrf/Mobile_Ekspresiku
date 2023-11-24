import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Load data from SharedPreferences
  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
      email = prefs.getString('email') ?? '';
    });
  }

  // Save data to SharedPreferences
  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('email', email);
  }

  _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Data Tersimpan'),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitLayout();
        } else {
          return _buildLandscapeLayout();
        }
      },
    );
  }

  Widget _buildPortraitLayout() {
    return Container(
      height: 800,
      color: Colors.amber,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 180),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 70,
                backgroundImage: AssetImage("assets/profil.png"),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.3),
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.3),
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _saveData(); // Memanggil _saveData untuk menyimpan data
                  _showAlertDialog(context); // Menampilkan AlertDialog
                },
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Mengubah warna tombol menjadi hitam
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      color: Colors.amber,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 70,
                backgroundImage: AssetImage("assets/profil.png"),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  initialValue: name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.3),
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  initialValue: email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.3),
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _saveData(); // Memanggil _saveData untuk menyimpan data
                  _showAlertDialog(context); // Menampilkan AlertDialog
                },
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Mengubah warna tombol menjadi hitam
                ),
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}

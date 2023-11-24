// import 'package:ekspresiku/model/news_list.dart';
import 'package:flutter/material.dart';

import 'package:ekspresiku/page/detail_screen.dart';
import 'package:ekspresiku/model/expresion_type.dart';
// import 'package:ekspresiku/users/logout_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(6),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6),
          child: Card(
            color: Colors.black,
            elevation: 4,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/login.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Yuk Kenali Ekspresi !',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Berikut adalah macam - macam ekspresi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 0.8,
                ),
                ExpansionTile(
                  trailing: Icon(
                    _customIcon ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: _customIcon ? Colors.amber : Colors.amber,
                  ),
                  title: Text(
                    'Apa itu Ekspresi ?',
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Ekspresi adalah cara seseorang mengekspresikan atau mengungkapkan perasaan, pikiran, atau emosi kepada orang lain atau ke lingkungan sekitarnya. Ekspresi bisa terjadi melalui berbagai saluran, termasuk verbal (menggunakan kata-kata dan bahasa), non-verbal (melalui bahasa tubuh, ekspresi wajah, gestur, dll.), tulisan, seni, dan berbagai bentuk komunikasi lainnya.',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ekspresi merupakan cara bagi individu untuk berkomunikasi dengan orang lain atau untuk menyampaikan apa yang mereka rasakan atau pikirkan. Ini dapat mencakup berbagai jenis ekspresi, termasuk ekspresi kebahagiaan, kesedihan, kemarahan, cinta, ketidakpuasan, kekecewaan, dan banyak lagi. Ekspresi juga dapat bervariasi berdasarkan budaya, situasi, konteks, dan individualitas masing-masing orang. Dalam komunikasi manusia, ekspresi adalah alat penting untuk berkomunikasi dan memahami perasaan dan ide-ide satu sama lain.',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customIcon = expanded);
                  },
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: OrientationBuilder(builder: (context, orientation) {
              return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: expresionTypeList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen(
                                expresion: expresionTypeList[index]);
                          },
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              expresionTypeList[index].imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Divider(
                            color: Colors.amber,
                            thickness: 0.8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 7.0),
                            child: Text(
                              expresionTypeList[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            })),
        SizedBox(
          height: 23,
        ),
        Text(
          'Created by Alfauzi',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

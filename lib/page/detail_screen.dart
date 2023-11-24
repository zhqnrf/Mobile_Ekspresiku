import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ekspresiku/model/expresion_type.dart';

class DetailScreen extends StatelessWidget {
  final ExpresionType expresion;

  const DetailScreen({Key? key, required this.expresion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailRotatePage(expresion: expresion);
        } else {
          return DetailMobilePage(expresion: expresion);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final ExpresionType expresion;

  const DetailMobilePage({Key? key, required this.expresion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(expresion.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const StarButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              color: Colors.black,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    expresion.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.info, color: Colors.amber),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.black,
                            title: Text(
                              'Ciri ${expresion.name}',
                              style: TextStyle(color: Colors.white),
                            ),
                            content: Text(
                              expresion.detail,
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.justify,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Tutup',
                                  style: TextStyle(
                                    color: Colors.amber,
                                    // Mengatur warna teks menjadi amber
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                expresion.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailRotatePage extends StatefulWidget {
  final ExpresionType expresion;

  const DetailRotatePage({Key? key, required this.expresion}) : super(key: key);

  @override
  _DetailRotatePageState createState() => _DetailRotatePageState();
}

final _scrollController = ScrollController();

@override
void dispose() {
  _scrollController.dispose();
}

class _DetailRotatePageState extends State<DetailRotatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.expresion.name,
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: <Widget>[
          const StarButton(),
          IconButton(
            icon: Icon(Icons.info, color: Colors.amber),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.black,
                    title: Text(
                      'Ciri ${widget.expresion.name}',
                      style: TextStyle(color: Colors.white),
                    ),
                    content: Text(
                      widget.expresion.detail,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Tutup',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      widget.expresion.imageAsset,
                      width: 300,
                      height: 300,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  Scrollbar(
                    controller: _scrollController,
                    child: Container(
                      height: 10,
                      padding: const EdgeInsets.only(bottom: 16),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.expresion.description,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StarButton extends StatefulWidget {
  const StarButton({Key? key}) : super(key: key);

  @override
  _StarButtonState createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButton> {
  bool isStar = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isStar ? Icons.star : Icons.star_border_purple500_outlined,
        color: Colors.amber,
      ),
      onPressed: () {
        setState(() {
          isStar = !isStar;
        });
      },
    );
  }
}

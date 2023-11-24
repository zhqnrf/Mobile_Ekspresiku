import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ekspresiku/model/news_list.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailNews extends StatelessWidget {
  final NewsModal news;

  const DetailNews({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailRotatePage(news: news);
        } else {
          return DetailMobilePage(news: news);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final NewsModal news;

  const DetailMobilePage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                news.category,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600], // Atur warna abu yang sesuai
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                news.title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                news.creator.toUpperCase(),
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                news.date,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[600], // Atur warna abu yang sesuai
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.all(10.0), // Atur padding sesuai kebutuhan
              child: Image.asset(news.imageAsset),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: news.paragraph1,
                      style: TextStyle(
                        textBaseline: TextBaseline
                            .alphabetic, // Jorokan ke dalam pada awal kalimat
                      ),
                    ),
                    TextSpan(text: '\n\n'), // Tambahkan baris baru
                    TextSpan(
                      text: news.paragraph2,
                      style: TextStyle(
                        textBaseline: TextBaseline
                            .alphabetic, // Jorokan ke dalam pada awal kalimat
                      ),
                    ),
                    TextSpan(text: '\n\n'), // Tambahkan baris baru
                    TextSpan(
                      text: news.paragraph3,
                      style: TextStyle(
                        textBaseline: TextBaseline
                            .alphabetic, // Jorokan ke dalam pada awal kalimat
                      ),
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

class DetailRotatePage extends StatefulWidget {
  final NewsModal news;

  const DetailRotatePage({Key? key, required this.news}) : super(key: key);

  @override
  _DetailRotatePageState createState() => _DetailRotatePageState();
}

class _DetailRotatePageState extends State<DetailRotatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.news.category),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
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
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  widget.news.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  widget.news.creator.toUpperCase(),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  widget.news.date,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(widget.news.imageAsset),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.news.paragraph1,
                      ),
                      TextSpan(text: '\n\n'),
                      TextSpan(
                        text: widget.news.paragraph2,
                      ),
                      TextSpan(text: '\n\n'),
                      TextSpan(
                        text: widget.news.paragraph3,
                      ),
                    ],
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

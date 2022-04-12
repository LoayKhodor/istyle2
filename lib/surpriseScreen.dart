import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SurpriseScreen extends StatefulWidget {
  const SurpriseScreen({Key? key,}) : super(key: key);

  @override
  State<SurpriseScreen> createState() => _SurpriseScreenState();
}

class _SurpriseScreenState extends State<SurpriseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 320,
              height: 200,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Center(
                      child: AutoSizeText(
                        'Oops something went wrong!!\n\nTry scanning the QR code inside',
                        // widget.cmp,
                        maxLines: 4,
                        minFontSize: 18,
                        maxFontSize: 24,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Color(0xFFde1835),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Image(
              image: AssetImage('images/istyle.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('icons/ig.png'),
                iconSize: 30,
                onPressed: () =>
                    launch('https://www.instagram.com/istylebeirut/'),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                icon: Image.asset('icons/tiktok.png'),
                iconSize: 30,
                onPressed: () => launch('https://www.tiktok.com/@istylebeirut'),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                icon: Image.asset('images/web.png'),
                iconSize: 30,
                onPressed: () => launch('https://istyle.com.lb/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

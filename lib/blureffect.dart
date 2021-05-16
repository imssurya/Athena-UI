import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurEffect extends StatefulWidget {
  const BlurEffect({Key key}) : super(key: key);

  @override
  _BlurEffectState createState() => _BlurEffectState();
}

class _BlurEffectState extends State<BlurEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://image.freepik.com/free-photo/vertical-image-bearded-man-shirt-which-jumping_171337-15946.jpg'),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                color: Colors.red[900].withOpacity(0.4),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 20, right: 20, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'ATHENA',
                      style: TextStyle(
                          letterSpacing: 5,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'skip',
                      style: TextStyle(
                        //letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 20,
                        //fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 100,
                left: 20,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop the\nmost modern\nessentials',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 35),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              Positioned(
                //top: MediaQuery.of(context).size.height / 2 - 50,
                left: 20,
                bottom: 40,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 6,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 6,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 6,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: Container(
                  width: 100,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

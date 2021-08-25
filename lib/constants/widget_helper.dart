import 'package:flutter/material.dart';

Widget appBarTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Text(
      title,
      style: TextStyle(fontFamily: 'berlin-sans-fb-cufonfonts', fontSize: 50.0),
    ),
  );
}

Widget searchTextField({String? hintText}) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: TextFormField(
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.white70,
              size: 32.0,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Color.fromRGBO(188, 188, 208, 1), fontSize: 22.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(114, 125, 137, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          focusedBorder: InputBorder.none),
    ),
  );
}

class DribbleCard extends StatelessWidget {
  const DribbleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color.fromRGBO(254, 121, 116, 1),
                  Color.fromRGBO(208, 45, 106, 1)
                ])),
        child: Stack(
          children: [
            Positioned(
              right: 20.0,
              top: 10.0,
              child: Text(
                '#1',
                style: TextStyle(
                    fontFamily: 'arial',
                    color: Colors.black12.withOpacity(0.1),
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold),
                textScaleFactor: 1.1,
              ),
            ),
            Positioned(
              top: 5.0,
              bottom: 0.0,
              right: 5.0,
              left: 5.0,
              child: Container(
                height: height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: width / 3,
                        height: height / 6.5,
                        child: Image.asset(
                          'assets/images/driblogo1.png',
                        ),
                      ),
                    ),
                    Text(
                      'dribbble',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      '@afzalali15',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width / 1.3,
                      height: height / 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          border: Border.all(color: Colors.white60)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '123',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18.0),
                                  ),
                                  TextSpan(
                                    text: ' shots',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 16.0),
                                  )
                                ],
                              ),
                            ),
                            Text('add new',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.0))
                          ],
                        ),
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

class BehanceCard extends StatelessWidget {
  const BehanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color.fromRGBO(51, 193, 254, 1),
                  Color.fromRGBO(28, 98, 220, 1)
                ])),
        child: Stack(
          children: [
            Positioned(
              right: 30.0,
              top: 12.0,
              child: Text(
                '#2',
                style: TextStyle(
                    fontFamily: 'arial',
                    color: Colors.black12.withOpacity(0.1),
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold),
                textScaleFactor: 1.1,
              ),
            ),
            Positioned(
              top: 5.0,
              bottom: 0.0,
              right: 5.0,
              left: 5.0,
              child: Container(
                // height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        height: height / 8,
                        child: Text(
                          'Bē',
                          // textScaleFactor: 1.0,
                          style: TextStyle(
                              // fontFamily: 'berlin-sans-fb-cufonfonts',
                              fontSize: 80.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      'behance',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '@afzalali15',
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: width / 1.3,
                      height: height / 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          border: Border.all(color: Colors.white60)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '207',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18.0),
                                  ),
                                  TextSpan(
                                    text: ' posts',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 16.0),
                                  )
                                ],
                              ),
                            ),
                            Text('add new',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.0))
                          ],
                        ),
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(254, 121, 116, 1),
                Color.fromRGBO(208, 45, 106, 1)
              ])),
      child: Stack(
        children: [
          Positioned(
            right: 50.0,
            top: 60.0,
            child: Text(
              '#1',
              style: TextStyle(
                  fontFamily: 'arial',
                  color: Colors.black12.withOpacity(0.1),
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold),
              textScaleFactor: 1.1,
            ),
          ),
          Positioned(
            top: 60.0,
            bottom: 0.0,
            right: 5.0,
            left: 5.0,
            child: Container(
              height: height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: width / 3,
                      height: height / 9,
                      child: Image.asset(
                        'assets/images/driblogo1.png',
                      ),
                    ),
                  ),
                  Text(
                    'dribbble',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.6,
                    endIndent: 80.0,
                    indent: 80.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: width / 1.3,
                    height: height / 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '123',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0),
                              ),
                              Text(
                                'shots',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16.0),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '623K',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0),
                              ),
                              Text(
                                'likes',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16.0),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '129K',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0),
                              ),
                              Text(
                                'fans',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

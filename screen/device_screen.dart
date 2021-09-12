import 'package:dev_hcmus/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'remote_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "DEVsmart",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey[100],
                  type: MaterialType.card,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33)),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Container(
                          padding: EdgeInsets.only(right: 4),
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            heroTag: "_MAIN_FAB_0",
                            mini: true,
                            elevation: 0,
                            onPressed: () {},
                            child: Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text("Wifi"),
                        Container(
                          padding: EdgeInsets.only(right: 4),
                          child: FloatingActionButton(
                            backgroundColor:
                                loading ? Colors.grey : Colors.blue,
                            heroTag: "_MAIN_FAB_1",
                            mini: true,
                            elevation: 0,
                            onPressed: () {
                              loading = true;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RemotePage(ip: '127.0.0.1')),
                              );
                              loading = false;
                            },
                            child: loading
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                    strokeWidth: 2,
                                  )
                                : Icon(Icons.arrow_forward),
                          ),
                        ),
                      ])),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

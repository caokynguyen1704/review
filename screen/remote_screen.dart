import 'package:dev_hcmus/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clay_containers/clay_containers.dart';

import 'btn_screen.dart';

Color baseColor = Color(0xFFF2F2F2);

class RemotePage extends StatefulWidget {
  const RemotePage({Key? key, required this.ip}) : super(key: key);
  final String ip;
  @override
  State<RemotePage> createState() => _RemotePageState(this.ip);
}

class _RemotePageState extends State<RemotePage> {
  String ip;
  _RemotePageState(this.ip);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderBtn(ip: this.ip),
          SizedBox(
            height: 8,
          ),
          Center(
            child: ClayContainer(
              color: baseColor,
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width * 5 / 6,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Text("Show here"),
              ),
            ),
          ),
          StatusBar(ip: this.ip),
          Padding(
            padding: EdgeInsets.all(1),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [VolumnBtn(ip: this.ip), MenuBtn(ip: this.ip)]),
          )
        ],
      )),
    );
  }
}

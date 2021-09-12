import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderBtn extends StatelessWidget {
  final String ip;
  HeaderBtn({Key? key, required this.ip}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClayContainer(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.width / 6,
          color: baseColor,
          borderRadius: 80,
          child: InkWell(
            onTap: () {
              print("Power Off " + this.ip);
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.power_settings_new),
            ),
          ),
        ),
        ClayContainer(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.width / 6,
          color: baseColor,
          borderRadius: 80,
          child: InkWell(
            onTap: () {
              print("Logout " + this.ip);
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.account_tree_outlined),
            ),
          ),
        ),
      ],
    );
  }
}

class VolumnBtn extends StatelessWidget {
  final String ip;
  VolumnBtn({Key? key, required this.ip}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClayContainer(
        color: baseColor,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 4,
        borderRadius: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.gpp_good_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.minimize_outlined))
          ],
        ),
      ),
    );
  }
}

class MenuBtn extends StatelessWidget {
  final String ip;
  MenuBtn({Key? key, required this.ip}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ClayContainer(
                  color: baseColor,
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: (Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.air),
                            Container(
                                child: Text(
                              "Bình Thường",
                              textAlign: TextAlign.center,
                            ))
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ClayContainer(
                  color: baseColor,
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: (Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.grass),
                            Container(
                                child: Text(
                              "Tự Nhiên",
                              textAlign: TextAlign.center,
                            ))
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ClayContainer(
                  color: baseColor,
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: (Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer),
                            Container(
                                child: Text(
                              "Hẹn Giờ",
                              textAlign: TextAlign.center,
                            ))
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ClayContainer(
                  color: baseColor,
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: (Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings),
                            Container(
                                child: Text(
                              "Cài Đặt",
                              textAlign: TextAlign.center,
                            ))
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  final String ip;
  StatusBar({Key? key, required this.ip}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.radio_button_checked,
                  color: Colors.green,
                  size: 10,
                ),
                label: Text(
                  "Bình Thường",
                  style: TextStyle(fontSize: 10),
                )),
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.red,
                  size: 10,
                ),
                label: Text(
                  "Tự Nhiên",
                  style: TextStyle(fontSize: 10),
                )),
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.red,
                  size: 10,
                ),
                label: Text(
                  "Hẹn Giờ",
                  style: TextStyle(fontSize: 10),
                ))
          ],
        ));
  }
}

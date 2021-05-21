import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/models/Account.dart';
import 'package:intl/intl.dart';

class AccountList extends StatelessWidget {
  List<Account> list = List<Account>();

  AccountList({this.list});

  ListView buildListViewWidget() {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: (index - 1) % 2 == 0 ? Colors.teal : Colors.lightGreen,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(list[index].email,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'RobotoMono',
                              fontSize: 20)),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Text(list[index].password,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RobotoMono',
                              fontSize: 18)),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                    ],
                  ),
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)
                              ),
                              child: Text(
                                  'Date: ${DateFormat.yMd().format(
                                      list[index].createdTime)}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Raleway',
                                      fontSize: 15)),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10))
                          ]))
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 500, child: buildListViewWidget());
  }
}

// ListTile(
// leading: Icon(
// Icons.favorite,
// color: Colors.red,
// ),
// title: Text(
// list[index].email,
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontFamily: 'Raleway',
// fontSize: 18),
// ),
// subtitle: Text(
// list[index].password,
// style: TextStyle(
// color: Colors.white, fontFamily: 'Raleway', fontSize: 15),
// ),
// onTap: () {
// // Navigator.pushNamed(context, DetailRoute);
// },
// ));

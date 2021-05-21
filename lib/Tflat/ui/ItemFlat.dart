import 'package:flutter/material.dart';

ListTile getListTFlat(icon, context, content, callBack) {
  return ListTile(
      leading: Container(
        width: 4,
        child: Icon(icon, size: 24.0),
      ),
      title: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(content,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700)),
        Text("GG")
      ]),
      onTap: () => callBack);
}

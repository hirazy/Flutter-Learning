import 'package:flutter/material.dart';

ListTile getListTitle(icon, iconColor, titleText, context, onPress) {
  return ListTile(
    leading: Container(
      width: 4,
      child: Icon(icon, color: iconColor, size: 24.0),
    ),
    title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Text(titleText,
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700)),
      Text("GG")
    ]),
    onTap: () => onPress,
  );
}

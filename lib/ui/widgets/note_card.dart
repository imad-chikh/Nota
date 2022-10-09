import 'package:app_01/config/app_theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? onTap , QueryDocumentSnapshot doc)
{
  return InkWell(
    onTap: onTap,
    child: SingleChildScrollView(
      child: Container(
        padding:EdgeInsets.all(8),
        //margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children:
          [
            Text(doc["note_title"],style: AppTheme.mainTitle,),
            Text(doc["note_content"],style: AppTheme.mainContent,),
            Text(doc["note_creation_date"],style: AppTheme.dateTitle,overflow: TextOverflow.ellipsis,
            maxLines: 5,),
          ],
        ),
      ),
    ),
  );
}
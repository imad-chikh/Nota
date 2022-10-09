import 'package:app_01/config/app_theme.dart';
import 'package:app_01/ui/widgets/note_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Your recent Notes ...',
              style: AppTheme.mainContent,
            ),
            SizedBox(
              height: 20,
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
              builder: (context, AsyncSnapshot <QuerySnapshot>snapshot){
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: CircularProgressIndicator()
                  );
                }
                if (snapshot.hasData)
                  {
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      shrinkWrap: true,
                      children:
                      snapshot.data!.docs.map((note)=>noteCard((){},note)).toList(),
                    );
                  }
                return Text("There's no Notes to display..",style: AppTheme.mainContent,);
              },

            )
          ],
        ),
    );
  }
}

import 'package:app_01/config/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteReaderPage extends StatefulWidget {
  const NoteReaderPage({Key? key}) : super(key: key);

  @override
  State<NoteReaderPage> createState() => _NoteReaderPageState();
}

int currentIndex = 0;
bool selectedIcon = false;
bool isDark = false;

class _NoteReaderPageState extends State<NoteReaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainColor,
        title: Text(DateFormat.MMMMEEEEd().format(DateTime.now())),
      ),
      backgroundColor: AppTheme.bgColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.black26,
                              spreadRadius: 3,
                              //offset: Offset.
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //drawer
      drawer: Drawer(
        backgroundColor: AppTheme.acecntColor,

        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppTheme.mainColor),
              child: Column(
              children: [CircleAvatar(radius: 45,backgroundColor: AppTheme.acecntColor,),SizedBox(height: 10,),Text('Imad Chikh',style: TextStyle(color: Colors.white,fontSize: 24),)],
            ),),

            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 35,
                color: AppTheme.mainColor,
              ),
              title: Text(
                '    Notifications',
                style: TextStyle(fontSize: 18, color: AppTheme.secColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 35,
                color: AppTheme.mainColor,
              ),
              title: Text(
                '    Settings',
                style: TextStyle(fontSize: 18, color: AppTheme.secColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline_rounded,
                size: 35,
                color: AppTheme.mainColor,
              ),
              title: Text(
                '    Help',
                style: TextStyle(fontSize: 18, color: AppTheme.secColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: CupertinoSwitch(
                onChanged: (bool? value) {
                  setState(() {
                    isDark = value!;
                  });
                },
                value: isDark,
                thumbColor: AppTheme.mainColor,
                trackColor: AppTheme.acecntSecColor.withOpacity(0.3),
                activeColor: AppTheme.acecntSecColor,
              ),
              title: Text(
                'Dark Theme',
                style: TextStyle(fontSize: 18, color: AppTheme.secColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_rounded,
                size: 35,
                color: AppTheme.mainColor,
              ),
              title: Text(
                '    Sign Out',
                style: TextStyle(fontSize: 18, color: AppTheme.secColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.black,
        enableFeedback: false,
        backgroundColor: Colors.white,
        unselectedItemColor: AppTheme.mainColor,
        selectedItemColor: AppTheme.mainColor,
        elevation: 0,
        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(
          color: AppTheme.mainColor,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: (currentIndex == 0)
                  ? Icon(Icons.fact_check)
                  : Icon(Icons.fact_check_outlined),
              label: ''),
          BottomNavigationBarItem(
              icon: (currentIndex == 1)
                  ? Icon(Icons.sticky_note_2_rounded)
                  : Icon(Icons.sticky_note_2_outlined),
              label: ''),
          BottomNavigationBarItem(
              icon: (currentIndex == 2)
                  ? Icon(Icons.calendar_today)
                  : Icon(
                      Icons.calendar_today_outlined,
                    ),
              label: ''),
          BottomNavigationBarItem(
              icon: (currentIndex == 3)
                  ? Icon(Icons.person)
                  : Icon(Icons.person_outline_outlined),
              label: ''),
        ],
      ),
    );
  }
}

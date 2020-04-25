import 'package:camera/new/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/setting_screen.dart';
import 'package:whatsappclone/widgets/screens_widget.dart';

import 'call_screen.dart';
import 'camera_screen.dart';
import 'chats_screen.dart';


class Home_Whatsapp extends StatefulWidget{
  var cameras;

  Home_Whatsapp(this.cameras);
  @override
  _Home_WhatsappState createState()=>_Home_WhatsappState();
}

class _Home_WhatsappState extends State<Home_Whatsapp> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController=new TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
       // backgroundColor: Colors.green,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(child:Text('Chats'),),
            Tab(child: Text('Calls'),),
            Tab(child: Text('Settings'),)
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TakePictureScreen(widget.cameras),
          ChatsScreen(),
          CallsScreen(),
          SettingsScreen()
        ],
      ),
     /* floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
          onPressed: (){

    },
      ),*/
      );
  }
}

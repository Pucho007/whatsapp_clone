import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chats_model.dart';
void main()=>runApp(ChatsScreen());

class ChatsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listChats.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(listChats[i].photo),
              radius: 22.0,
            ),
            title: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(listChats[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(listChats[i].hour, style: TextStyle(color: Colors.grey, fontSize: 14.0),)
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top:5.0),
              child: Text(listChats[i].message,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15.0),),
            ),
          ),
        ],
      ),
    );
  }
}
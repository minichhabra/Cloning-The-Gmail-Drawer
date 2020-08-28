//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/chip.dart';
void main() => runApp(Cookie());

class Cookie extends StatelessWidget {
  Widget help(String my_text,Icon x)
  {
    //String re=my_text;
    return ListTile(
      leading: x,
        title: Text(
            my_text
        ),
    onTap: () {
     //Navigator.pop(context);
  },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
                'Drawer Demo'
            ),
          ),
          body: Center(
            child:Text('My page'),
          ),
          drawer:Drawer(

            child: ListView(
                padding: EdgeInsets.zero,
              children: [
                ListTile(
                      title:Text(
                      'Gmail',
                      style:TextStyle(color: Colors.red,fontSize: 20.0),
                    ),

                ),
                SizedBox(
                  height: 20.0,
                  width: 100.0,
                  child: Divider(
                    height: 20.0,
                    color: Colors.grey,
                  ),
                ),

                //help('Primary',Icon(Icons.tablet_mac)),
                //help('Social',Icon(Icons.people)),
                   ListTile(
                    leading: Icon(Icons.tablet_mac),
                     title: Text(
                          'Primary'
                       ),
                     onTap: () {
                     //Navigator.pop(context);
                    },
                     trailing: Text('+99'),
                 ),
                ListTile(
                  leading: Icon(Icons.tablet_mac),
                  title: Text(
                      'Primary'
                  ),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                  trailing: Chip(
                    backgroundColor: Colors.blue,
                    //padding: EdgeInsetsGeometry,
                    label: Text('15 new'),
                  ),
                  ),

                help('Promotions',Icon(Icons.local_offer)),
                ListTile(
                  title:Text(
                    'ALL LABELS',
                    //style:TextStyle(color: Colors.red,fontSize: 20.0),
                  ),
                ),
                help('Starred',Icon(Icons.star_border)),
                help('Snoozed',Icon(Icons.access_time)),
                help('Important',Icon(Icons.label_outline)),
                help('Sent',Icon(Icons.send)),
                help('Scheduled',Icon(Icons.schedule)),
                //help('Outbox',Icon(Icons.me)),
                help('Drafts',Icon(Icons.insert_drive_file)),
                help('All mail',Icon(Icons.mail_outline)),
                help('Spam',Icon(Icons.warning)),
                help('Bin',Icon(Icons.delete_outline)),
                ListTile(
                  title:Text(
                    'GOOGLE APPS',
                    //style:TextStyle(color: Colors.red,fontSize: 20.0),
                  ),
                ),
                help('Calendar',Icon(Icons.calendar_today)),
                help('Contacts',Icon(Icons.contacts)),
                SizedBox(
                  height: 20.0,
                  width: 100.0,
                  child: Divider(
                    height: 20.0,
                    color: Colors.grey,
                  ),
                ),
                help('Settings',Icon(Icons.settings)),
                help('Help and feedback',Icon(Icons.help)),
              ],
            ),
            ),

          ),

    );
  }
}

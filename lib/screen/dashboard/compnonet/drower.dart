// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Drawer homedrower() => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Image(
            image: AssetImage('assets/dashboardpic.png'),
          ),
          ListTile(
            leading: Icon(
              Icons.library_add,
            ),
            title: Text('Saved Question'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.school,
            ),
            title: Text('Chage Class'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.phone_in_talk,
            ),
            title: Text('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.share,
            ),
            title: Text('Share app'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.account_tree,
            ),
            title: Text('Follow on Facebook'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.account_tree,
            ),
            title: Text('Follow on Instagram'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.verified_user,
            ),
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
        ],
      ),
    );

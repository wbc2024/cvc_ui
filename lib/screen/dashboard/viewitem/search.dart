import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: AppColor().app_color,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuerypage.screenHeight! * 0.02,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xFFE9E9E9),
                      filled: true,
                      prefixIcon:
                          Icon(Icons.search, color: AppColor().app_color),
                      hintText: 'Search for anything'
                      // errorText: 'Enter your mobile number'
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

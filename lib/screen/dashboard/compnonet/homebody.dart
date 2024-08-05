import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/teacher_choice/teacher_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

Column homebody(double radius) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: MediaQuerypage.screenHeight! * 0.02,
          bottom: MediaQuerypage.screenHeight! * 0.02,
          left: MediaQuerypage.screenWidth! * 0.05,
          right: MediaQuerypage.screenWidth! * 0.05,
        ),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: const Color(0xFFE9E9E9),
            filled: true,
            suffixIcon: Icon(Icons.search, color: AppColor().app_color),
            // errorText: 'Enter your mobile number'
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 6,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(Teacher_choice.name);
                  },
                  child: Card(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius * 10),
                            topRight: Radius.circular(radius * 10),
                            bottomLeft: Radius.circular(radius * 10),
                            bottomRight: Radius.circular(radius * 10))),
                    elevation: 5,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/book.png')),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text('hhvy'),
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.grey),
                            //     borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    ],
  );
}

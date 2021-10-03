import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.blue,
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [Colors.blue.shade800, Colors.blue.shade200],
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hisham Zeyad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Gemunu',
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text(
              //   'eLancer - Flutter Training',
              //   style: TextStyle(
              //     color: Colors.black45,
              //     fontWeight: FontWeight.w500,
              //     fontSize: 15,
              //     fontFamily: 'Gemunu',
              //   ),
              // ),
              Divider(
                color: Colors.white,
                thickness: 0.7,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              // Spacer(),
              Text(
                'eLancer - Flutter',
                style: TextStyle(
                  color: Colors.black45,
                  // fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Gemunu',
                  wordSpacing: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
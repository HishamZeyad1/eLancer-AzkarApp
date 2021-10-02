import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content="الحمد الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "سبحة الأذكار",
          style: TextStyle(fontFamily: 'Noto', color: Colors.black),
        ),
        actions: [
          PopupMenuButton<String>(
          onSelected: (value) {
            if(_content!=value){
              setState(() {
                _content=value;
                _counter=0;
              });

            }
          },
           itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("الحمدالله"),
                value: "الحمدالله",
              ),
              PopupMenuItem(
                child: Text("استغر الله"),
                value: "استغر الله",
              ),
              PopupMenuItem(
                child: Text("سبحان الله"),
                value: "سبحان الله",
              ),
            ];
          },),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('images/image1.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0),
                      blurRadius: 6,
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Noto',
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          '$_counter',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Noto',
                            // ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    child: Text(
                      "تسبيح",
                      style: TextStyle(
                        fontFamily: 'Noto',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    child: Text(
                      "اعادة",
                      //    style: TextStyle(
                      //      fontFamily: 'Noto',
                      //    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "images/background.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            //علامة الرجوع
            backgroundColor: Colors.black,
            leading: Icon(Icons.arrow_back),
            //عمل العنون بالصوره
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/person.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Percon"),
              ],
            ),
            //عمل الايكونات
            actions: [
              Icon(Icons.videocam),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.call),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Message("images/person1.jpg", "This is My Frist Message"),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                          Message("images/person2.jpg", "This is My Last Message"),
                    ),
                     Message("images/person1.jpg", "This is My Frist Message"),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                          Message("images/person2.jpg", "This is My Last Message"),
                    ),
                     Message("images/person1.jpg", "This is My Frist Message"),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                          Message("images/person2.jpg", "This is My Last Message"),
                    ),
                     Message("images/person1.jpg", "This is My Frist Message"),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                          Message("images/person2.jpg", "This is My Last Message"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    // عمل مكان للكتابه في زي الوتساب
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.attach_file),
                            suffixIconColor: Colors.white,
                            hintText: "Type a Message",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //عمل زرار الريكورد
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.white)),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.keyboard_voice_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  String pathimage;
  String text;
  Message(this.pathimage, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("$pathimage"),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "$text",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

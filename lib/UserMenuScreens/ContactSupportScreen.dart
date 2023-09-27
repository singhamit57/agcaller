import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class ContactSupportScreen extends StatefulWidget
{
  const ContactSupportScreen({Key? key}) :super(key: key);
  _ContactSupportScreenState createState()=>_ContactSupportScreenState();
}
class _ContactSupportScreenState extends State<ContactSupportScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Chat with us now!",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(
            color: Color(0xffd1cfcf),
            thickness: 1,
          ),
        Container(
          margin: EdgeInsets.only(bottom: 10,top: 5),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.attach_file_outlined),
              SizedBox(width: 15,),
              Text("Type your message here.."),
              SizedBox(width: 15,),
              Icon(Icons.send),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
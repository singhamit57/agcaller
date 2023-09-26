import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class ChangePswdScreen extends StatefulWidget
{
  const ChangePswdScreen({Key? key}) :super(key: key);
  _ChangePswdScreenState createState()=>_ChangePswdScreenState();
}
class _ChangePswdScreenState extends State<ChangePswdScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Reset Password",
          style: TextStyle(color: whiteColors),
        ),
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Conform",
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: logoColors),
                    onPressed: (){},
                    child: Padding(
                      padding: EdgeInsets.all(13),
                      child: Text(
                        "SUBMIT"
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:loginscreen/sizeconfig.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.widthPercentage * 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.heightPercentage * 10,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.grey[900].withOpacity(0.3),
              ),
              SizedBox(
                width: SizeConfig.widthPercentage * 2,
              ),
              Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey[900].withOpacity(0.3),
                ),
                textScaleFactor: 1.2,
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightPercentage * 1,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.transparent)),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightPercentage * 2,
          ),
          Row(
            children: [
              Icon(
                Icons.security,
                color: Colors.grey[900].withOpacity(0.3),
              ),
              SizedBox(
                width: SizeConfig.widthPercentage * 2,
              ),
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.grey[900].withOpacity(0.3),
                ),
                textScaleFactor: 1.2,
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightPercentage * 1,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your Password',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.transparent)),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightPercentage * 4,
          ),
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.greenAccent,
            splashColor: Colors.green[100],
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthPercentage * 14),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

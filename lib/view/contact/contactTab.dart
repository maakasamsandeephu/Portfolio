import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';

import '../../resource/colors.dart';

class ContactTab extends StatefulWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  State<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '''What's next?''',
                style: TextStyle(
                    color: AppColors().neonColor,
                    fontSize: 16,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Get In Touch',
                  style: GoogleFonts.robotoSlab(
                    color: AppColors().textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    'Although I’m not currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.09,
                    width: AppClass().getMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: AppColors().neonColor, width: 1.5)),
                    child: Center(
                      child: Text('Say Hello!',
                          style: TextStyle(
                              color: AppColors().neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '''Built & Developed by Jeevanandham''',
                style: TextStyle(
                    color: AppColors().textColor,
                    fontSize: 12,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''ref - Brittany Chiang''',
                  style: TextStyle(
                      color: AppColors().neonColor,
                      fontSize: 12,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
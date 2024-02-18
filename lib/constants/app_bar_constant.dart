import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/constants/assets_constants.dart';
import 'package:twitter_clone/theme/pallete.dart';

class ReusableAppBar{
  static AppBar appBar(){
    return AppBar(
      title: SvgPicture.asset(AssetsConstants.twitterLogo,colorFilter: ColorFilter.mode(Pallete.blueColor, BlendMode.clear),height: 50,),
      centerTitle: true,
    );
  }
}
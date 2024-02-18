import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/constants/assets_constants.dart';
import 'package:twitter_clone/features/auth/view/login_view.dart';
import 'package:twitter_clone/features/auth/widgets/auth_button.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final emailController= TextEditingController();
  final passwordController=TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title:Center(child: SvgPicture.asset(AssetsConstants.twitterLogo,colorFilter: ColorFilter.mode(Pallete.blueColor, BlendMode.srcIn),height: 30,)),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AuthField(controller: emailController,hintText:"email@gmail.com",),
              const SizedBox(height: 25,),
              AuthField(controller: passwordController,hintText: "hitesh@123",),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AuthSmallButton(label: "Done", onTap: (){}, backgroundcolor: Pallete.whiteColor, textColor: Pallete.backgroundColor)),
              ),
              const SizedBox(height: 40,),
              RichText(text: TextSpan(
                text: "Already have an Account?",
                style: const TextStyle(
                  fontSize: 16
                ),
                children: [
                  TextSpan(
                    text: ' Login In',
                    style: const TextStyle(
                      color: Pallete.blueColor,
                      fontSize: 16
                    ), recognizer: TapGestureRecognizer()..onTap=(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));

                    }
                  )
                ]
              ),
              )
              
              

            ]),
          ),
        )
      ),
    );
  }
  
}
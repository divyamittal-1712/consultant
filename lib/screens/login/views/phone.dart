import 'package:consultant_app/constant/app_assets.dart';
import 'package:consultant_app/constant/app_theme.dart';
import 'package:consultant_app/screens/login/controller/phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/validation_function.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';

class PhoneScreen extends StatelessWidget {
  static const String routeName = '/phone_screen';

  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppTheme.appWhite,
      body: Consumer<PhoneProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.phoneBack,
                  width: width,
                  height: height * 0.7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: "Enter Phone Number",
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColor.borderLightGreyColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: CustomTextField(
                            controller: provider.countryController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "+91",
                              labelStyle: TextStyle(color: AppColor.textGrey),
                            ),
                            style: TextStyle(
                              color: AppColor.appBlack,
                              fontWeight: FontWeight.w400,
                              fontFamily: "assets/font/Inter_Regular.ttf",
                            ),
                          ),
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 30,
                              color: AppColor.borderLightGreyColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: provider.phoneController,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.textGrey)),
                              // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.borderLightGreyColor)),
                              hintText: "Enter Phone Number",
                              // labelText: "Enter number",
                              counterText: "",
                              labelStyle: TextStyle(color: AppColor.textGrey),
                            ),
                            style: TextStyle(
                              color: AppColor.appBlack,
                              fontWeight: FontWeight.w400,
                              fontFamily: "assets/font/Inter_Regular.ttf",
                            ),
                            validator: validateMobileNumber,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DefaultButton(
                    key: UniqueKey(),
                    // loadingFlag: provider.isLoading,
                    onPressed: () {
                      provider.otpTap(context);
                    },

                    text: "Continue",
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    fixedSizeWidth: 0.9,
                    fontColor: AppColor.whiteColor,
                  ),
                ),
                const SizedBox(height: 12,),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: NormalText(
                          text: "By proceeding you are agreeing to",
                          size: 12,
                          color: AppColor.textGrey,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.center,
                        child: NormalText(
                          text: "Terms & Conditions",
                          size: 12,
                          color: AppColor.skyBlueColor,
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

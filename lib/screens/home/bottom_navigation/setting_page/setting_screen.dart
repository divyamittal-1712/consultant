import 'package:consultant_app/constant/app_theme.dart';
import 'package:consultant_app/screens/home/bottom_navigation/setting_page/provider/setting_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_network_image.dart';
import '../../../../widgets/custom_setting_text.dart';
import '../../../../widgets/text_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static const String routeName = '/settingpage';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Consumer<SettingProvider>(
        builder: (context,provider,child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: AppNetworkImage(
                    // SharedPre.getStringValue(SharedPre.userProfile).isNotEmpty ? SharedPre.getStringValue(SharedPre.userProfile):
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/271deea8-e28c-41a3-aaf5-2913f5f48be6/de7834s-6515bd40-8b2c-4dc6-a843-5ac1a95a8b55.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI3MWRlZWE4LWUyOGMtNDFhMy1hYWY1LTI5MTNmNWY0OGJlNlwvZGU3ODM0cy02NTE1YmQ0MC04YjJjLTRkYzYtYTg0My01YWMxYTk1YThiNTUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BopkDn1ptIwbmcKHdAOlYHyAOOACXW0Zfgbs0-6BY-E',
                    radius: BorderRadius.circular(100),
                    height: 140,
                    width: 140,
                    bgColor: Colors.white,
                    borderColor: AppColor.whiteColor,
                    borderWidth: 1,
                    imagePadding: const EdgeInsets.all(1),
                  ),
                ),
                NormalText(
                  text: 'Satyam Kumar',
                  size: 24,
                  color: AppColor.appBlack,
                  fontWeight: FontWeight.w700,
                ),
                NormalText(
                  text: 'Consultant Specialist',
                  size: 18,
                  color: AppColor.textGrey,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      color: AppTheme.appWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Adjust as desired
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            profileStatus("Applied","72"),
                            profileStatus("Viewed","60"),
                            profileStatus("Interview","09"),
            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: 'Your Account',
                      size: 14,
                      color: AppColor.darkGreyColor ,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTileText(
                  title: "Favourite",
                  onTap: (){},
                  leading: Icons.favorite_border,
                ),
                ListTileText(
                  title: "Transaction History",
                  onTap: (){},
                  leading: Icons.watch_later_outlined,
                ),
                ListTileText(
                  title: "Account Details",
                  onTap: (){},
                  leading: Icons.person_2_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: AppColor.borderLightGreyColor,
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: 'Push Notifications',
                      size: 14,
                      color: AppColor.darkGreyColor ,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),


                ListTile(
                  leading: Icon(Icons.notifications_active_outlined,color: AppColor.darkGreyColor,size: 20,),
                  title: NormalText(
                    text: "Alert Notifications",
                    size: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.appBlack,
                  ),
                  trailing: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppTheme.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                  onTap: (){},
            
            ),
                ListTile(
                  leading: Icon(Icons.calendar_month,color: AppColor.darkGreyColor,size: 20,),
                  title: NormalText(
                    text: "Appoinments",
                    size: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.appBlack,
                  ),
                  trailing: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppTheme.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                  onTap: (){},

                ),
                ListTile(
                  leading: Icon(Icons.message,color: AppColor.darkGreyColor,size: 20,),
                  title: NormalText(
                    text: "Direct Message",
                    size: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.appBlack,
                  ),
                  trailing: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppTheme.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                  onTap: (){},

                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: AppColor.borderLightGreyColor,
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: 'More Info & Support',
                      size: 14,
                      color: AppColor.darkGreyColor ,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTileText(
                  title: "Privacy",
                  onTap: (){},
                  leading: Icons.lock_outlined,
                ),
                ListTileText(
                  title: "Security",
                  onTap: (){},
                  leading: Icons.security,
                ),
                ListTileText(
                  title: "Service & Feedback",
                  onTap: (){},
                  leading: Icons.feedback_outlined,
                ),
                ListTileText(
                  title: "Help Center",
                  onTap: (){},
                  leading: Icons.help_outline,
                ),
              ],
            ),
          );
        }
      ),
    );
  }

  Widget profileStatus(String name,String number) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalText(
          text: name,
          size: 16,
          color: AppColor.appBlack,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 6,),
        NormalText(
          text: number,
          size: 18,
          color: AppColor.skyBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }




}
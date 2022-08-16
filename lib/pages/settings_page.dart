import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_telegram_clone_app/json/chat_json.dart';
import 'package:flutter_telegram_clone_app/json/setting_json.dart';
import 'package:flutter_telegram_clone_app/theme/colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: const Size.fromHeight(60),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      leading: const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.qr_code,
          color: primary,
          size: 28,
        ),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Text(
            "Edit",
            style: TextStyle(
                fontSize: 16, color: primary, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(profile[0]['img']),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            profile[0]['name'],
            style: const TextStyle(
              fontSize: 24,
              color: white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "9876543210 - @maheshpd",
            style: TextStyle(
                fontSize: 18,
                color: white.withOpacity(0.5),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          getSectionOne(),
          const SizedBox(
            height: 30,
          ),
          getSectionTwo(),
          const SizedBox(
            height: 30,
          ),
          getSectionThree(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget getSectionOne() {
    return Column(
      children: List.generate(setting_section_one.length, (index) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: setting_section_one[index]['color'],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Icon(
                              setting_section_one[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_one[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: white.withOpacity(0.2),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getSectionTwo() {
    return Column(
      children: List.generate(setting_section_two.length, (index) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: setting_section_two[index]['color'],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Icon(
                              setting_section_two[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_two[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        getLangAndSticker(setting_section_two[index]['text']),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white.withOpacity(0.2),
                          size: 15,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  getLangAndSticker(value) {
    if (value == "Language") {
      return Text(
        "English",
        style: TextStyle(fontSize: 15, color: white.withOpacity(0.5)),
      );
    } else if (value == "Stickers and Emoji") {
      return Badge(
        badgeColor: primary,
        badgeContent: const Text(
          "12",
          style: TextStyle(fontSize: 15, color: white),
        ),
      );
    }
    return Container();
  }

  Widget getSectionThree() {
    return Column(
      children: List.generate(setting_section_three.length, (index) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: setting_section_three[index]['color'],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Icon(
                              setting_section_three[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_three[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: white.withOpacity(0.2),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

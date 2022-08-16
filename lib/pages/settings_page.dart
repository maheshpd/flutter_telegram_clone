import 'package:flutter/material.dart';
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
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: greyColor,
      leading: const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.qr_code,
          color: primary,
          size: 28,
        ),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.qr_code,
            color: primary,
            size: 28,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_telegram_clone_app/json/contact_json.dart';
import 'package:flutter_telegram_clone_app/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: const Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 68,
            decoration: const BoxDecoration(color: greyColor),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      style: const TextStyle(
                        color: white,
                      ),
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            LineIcons.search,
                            color: white.withOpacity(0.3),
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: white.withOpacity(0.3), fontSize: 17)),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          getSectionIcons(),
          getContactList(),
        ],
      ),
    );
  }

  Widget getSectionIcons() {
    List icons = [
      {"icon": LineIcons.mapMarker, "label": "Find People Nearby"},
      {"icon": LineIcons.userPlus, "label": "Invite Friends"},
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
          children: List.generate(icons.length, (index) {
        return Column(
          children: [
            Row(
              children: [
                Icon(
                  icons[index]['icon'],
                  color: primary,
                  size: 28,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  icons[index]['label'],
                  style: const TextStyle(
                      fontSize: 16,
                      color: primary,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Divider(
                thickness: 1,
                color: white.withOpacity(0.15),
              ),
            )
          ],
        );
      })),
    );
  }

  Widget getContactList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: List.generate(contact_data.length, (index) {
        return Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(contact_data[index]['img']),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact_data[index]['name'],
                      style: const TextStyle(
                          fontSize: 17,
                          color: white,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      contact_data[index]['is_online']
                          ? "online"
                          : contact_data[index]['seen'],
                      style: TextStyle(
                          fontSize: 13,
                          color: contact_data[index]['is_online']
                              ? primary
                              : white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Divider(
                thickness: 1,
                color: white.withOpacity(0.15),
              ),
            )
          ],
        );
      })),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: greyColor,
      title: const Text(
        'Contacts',
        style:
            TextStyle(fontSize: 20, color: white, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      leading: const IconButton(
          onPressed: null,
          icon: Text(
            "Sort",
            style: TextStyle(
                fontSize: 16, color: primary, fontWeight: FontWeight.w500),
          )),
      actions: const [
        IconButton(onPressed: null, icon: Icon(LineIcons.plus, color: primary))
      ],
    );
  }
}

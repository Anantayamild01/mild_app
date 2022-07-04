import 'package:flutter/material.dart';
import 'package:mild_app/models/phone_list.dart';
import 'package:mild_app/views/detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<PhoneList> phoneListInfo = [
    PhoneList(
      name: 'แจ้งเหตุด่วน',
      mobile: '191',
      image: 'h1.jpg',
    ),
    PhoneList(
      name: 'แจ้งเหตุไฟไหม้',
      mobile: '199',
      image: 'h2.jpg',
    ),
    PhoneList(
      name: 'กู้ชีพวชิรพยาบาล',
      mobile: '1554',
      image: 'h3.jfif',
    ),
    PhoneList(
      name: 'จ.ส.100',
      mobile: '1137',
      image: 'h4.jpg',
    ),
    PhoneList(
      name: 'ตำรวจท่องเที่ยว',
      mobile: '1155',
      image: 'h5.png',
    ),
    PhoneList(
      name: 'กองปราบปราม',
      mobile: '1195',
      image: 'h7.jpg',
    ),
    PhoneList(
      name: 'แจ้งรถหาย',
      mobile: '1192',
      image: 'h8.jfif',
    ),
    PhoneList(
      name: 'ตำรวจทางหลวง',
      mobile: '1193',
      image: 'h9.png',
    ),
    PhoneList(
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      mobile: '1196',
      image: 'h11.jpg',
    ),
    PhoneList(
      name: 'เจ็บป่วยฉุกเฉิน',
      mobile: '1646',
      image: 'h12.jpg',
    ),
    PhoneList(
      name: 'ศูนย์ อปพร.',
      mobile: '1784',
      image: 'h13.jfif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 120, 12),
        title: Text(
          'สายด่วน',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Color.fromARGB(255, 241, 142, 12),
                  );
                },
                itemCount: phoneListInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: phoneListInfo[index].name!,
                            mobile: phoneListInfo[index].mobile!,
                            image: phoneListInfo[index].image!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + phoneListInfo[index].image!,
                    ),
                    title: Text(
                      phoneListInfo[index].name!,
                    ),
                    subtitle: Text(
                      phoneListInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.phone_in_talk,
                      color: Color.fromARGB(255, 236, 134, 39),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

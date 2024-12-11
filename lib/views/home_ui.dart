// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  late TabController _tabController;
  int _currentTabIndex = 0;

  void initState() {
    _tabController =
        TabController(length: 10, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 210, 208),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 66, 247, 172),
          title: Text(
            'จังหวัดพิจิตร',
            style: GoogleFonts.kanit(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0); //exit app
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 214, 214, 214),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[300],
            indicatorColor: Colors.yellow,
            indicatorWeight: 10.0,
            tabAlignment: TabAlignment.start,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'จังหวัดพิจิตร',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอเมืองพิจิตร',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอวังทรายพูน',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอโพธิ์ประทับช้าง',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอตะพานหิน',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอบางมูลนาก',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอโพทะเล',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอสามง่าม',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอทับคล้อ',
              ),
              Tab(
                icon: Icon(
                  Icons.add_road_outlined,
                ),
                text: 'อำเภอสากเหล็ก',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 231, 247, 189),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'จังหวัดพิจิตร',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'เว็บจังหวัดพิจิตร',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/pp1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://roijang.com/wp-content/uploads/2023/08/shutterstock_1325883164.jpg',
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://roijang.com/wp-content/uploads/2023/08/shutterstock_561183637.jpg',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://roijang.com/wp-content/uploads/2023/08/shutterstock_2179658163.jpg',
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });

                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Wat_Pho_Prathap_Chang_07.jpg/1280px-Wat_Pho_Prathap_Chang_07.jpg',
                  ),
                ),
                title: Text(
                  'จังหวัดพิจิตร',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 1;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Phichit_Railway_Station.jpg/1280px-Phichit_Railway_Station.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอเมืองพิจิตร',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 2;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit3.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอวังทรายพูน',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 3;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit4.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอโพธิ์ประทับช้าง',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 4;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit5.jpg',
                  ),
                   ),

                title: Text(
                  'อำเภอตะพานหิน',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 5;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cms.dmpcdn.com/travel/2021/05/11/f8443070-b223-11eb-a753-ed580dade28e_original.jpg',
                  ),
                ),
                  
                ),
                title: Text(
                  'อำเภอบางมูลนาก',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 5;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit6.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอโพทะเล',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 6;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit7.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอสามง่าม',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 7;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://roijang.com/wp-content/uploads/2023/08/shutterstock_1919570918.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอทับคล้อ',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 8;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://roijang.com/wp-content/uploads/2022/05/shutterstock_697174237.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอสากเหล็ก',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 9;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cms.dmpcdn.com/travel/2021/04/26/9dc89790-a69c-11eb-82d0-f787c3df094f_original.jpg',
                  ),
                ),
               
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text(
                  'ออกจากแอพ',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            tab01(
                'จังหวัดพิจิต',
                'https://cms.dmpcdn.com/travel/2021/05/30/aae006c0-c113-11eb-8020-bb86c50a8d49_original.jpg',
                'https://cms.dmpcdn.com/travel/2021/03/21/56e97340-8a0d-11eb-a403-33d334b99f04_original.jpg',
                'https://cms.dmpcdn.com/travel/2020/10/06/8c1ca2a0-077f-11eb-b0e5-9fcb4be888b0_original.jpg',
                '056-615763',
                'พิจิตร เป็นจังหวัดหนึ่งที่ตั้งอยู่ทางภาคกลางตอนบนระหว่างจังหวัดนครสวรรค์กับจังหวัดพิษณุโลก บางแห่งจัดเป็นภาคเหนือตอนล่างมีพื้นที่ประมาณ 4,531 ตารางกิโลเมตร มีประชากรในปี พ.ศ. 2561 จำนวน 539,374 คน จังหวัดพิจิตรมีแม่น้ำน่านและแม่น้ำยมไหลผ่าน ตัวเมืองพิจิตรตั้งอยู่ริมฝั่งแม่น้ำน่าน',
                'https://phichit.prd.go.th/th/page/item/index/id/12',
                'https://www.google.com/maps?ll=16.398531,100.374064&z=16&t=m&hl=th&gl=TH&mapclient=embed&cid=14373455700820124388'),
            tab02(
                'อำเภอเมืองพิจิตร',
                'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit3.jpg',
                'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit4.jpg',
                'https://www.scb.co.th/content/media/personal-banking/stories-tips/travel-pijit/pijit5.jpg',
                '056 990 401',
                '056 611 230 ',
                'https://www.facebook.com/PhichitDistrictOffice/',
                'https://www.google.com/maps?sca_esv=369bb2d90aa2509e&sca_upv=1&output=search&q=%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%AD%E0%B9%8D%E0%B8%B2%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B8%9E%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A3&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
            tab02(
                'อำเภอวังทรายพูน',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Temple_water.JPG/375px-Temple_water.JPG',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Amphoe_6602.svg/1024px-Amphoe_6602.svg.png',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/General_Electric_UM12C_No._4018_%28II%29.jpg/1280px-General_Electric_UM12C_No._4018_%28II%29.jpg',
                '056 695 610',
                '056 695 032',
                'https://www.phichitpao.go.th/frontpage',
                'https://www.google.com/maps/place/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD+%E0%B8%A7%E0%B8%B1%E0%B8%87%E0%B8%97%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%9E%E0%B8%B9%E0%B8%99+%E0%B8%9E%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A3/@16.3803529,100.3541772,11z/data=!3m1!4b1!4m6!3m5!1s0x30dff9435a989955:0x304fb54b00878c0!8m2!3d16.3398308!4d100.5521142!16s%2Fm%2F027xtzj?entry=ttu'),
            tab02(
                'อำเภอโพธิ์ประทับช้าง',
                'https://lh5.googleusercontent.com/p/AF1QipPxoPvG01q6eiQrrH4n40U57BV4O8RBozqHT8md=w743-h429-n-k-no',
                'https://lh5.googleusercontent.com/p/AF1QipOl_UdwFcwTg7e_nWfq_k3GOQkJ2JkmBFEyQSfa=w743-h429-n-k-no',
                'https://lh5.googleusercontent.com/p/AF1QipPCB4HTfhDrS-l0EjbJqxxXoGZcph11I080hXVC=w743-h429-n-k-no',
                '056 689 034',
                '056 689 018',
                'https://www.pptc.go.th/event',
                'https://www.google.com/maps/place/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B9%82%E0%B8%9E%E0%B8%98%E0%B8%B4%E0%B9%8C%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%97%E0%B8%B1%E0%B8%9A%E0%B8%8A%E0%B9%89%E0%B8%B2%E0%B8%87+%E0%B8%9E%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A3/@16.3205654,99.8463915,10z/data=!3m1!4b1!4m6!3m5!1s0x30dfdf35204ffb71:0x304fb54b00878d0!8m2!3d16.3110769!4d100.1927389!16s%2Fm%2F02pgthc?entry=ttu'),
            tab02(
                'อำเภอตะพานหิน',
                'https://lh5.googleusercontent.com/p/AF1QipMs7QBjI4cizlnPB09qyKq7GUJjBgJY1JP4rteQ=w743-h429-n-k-no',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Amphoe_6604.svg/375px-Amphoe_6604.svg.png',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Taphan_Hin_Station.JPG/1280px-Taphan_Hin_Station.JPG',
                '056 621 087',
                '056 621 355',
                'https://www.taphanhin.go.th/history',
                'https://www.google.com/maps?sca_esv=b1e24946e2e3e41f&sca_upv=1&output=search&q=%E0%B8%95%E0%B8%B0%E0%B8%9E%E0%B8%B2%E0%B8%99%E0%B8%AB%E0%B8%B4%E0%B8%99&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
            tab02(
                'อำเภอบางมูลนาก',
                'https://lh5.googleusercontent.com/p/AF1QipOyh4bZYC0ft_w11vtiNRodrAxTFIXVjFZqp-RA=w743-h429-n-k-no',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Amphoe_6605.svg/375px-Amphoe_6605.svg.png',
                'https://lh5.googleusercontent.com/p/AF1QipNkCSh1f94AWyTwBHynwEhF4vl5GE5TDm7I2Lmq=w743-h429-n-k-no',
                '056 631 022',
                ' 056 631 131',
                'https://www.bangmulnak.go.th/event.php',
                'https://www.google.com/maps?sca_esv=b1e24946e2e3e41f&sca_upv=1&output=search&q=%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B8%A1%E0%B8%B9%E0%B8%A5%E0%B8%99%E0%B8%B2%E0%B8%81&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
            tab02(
                'อำเภอโพทะเล',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Starr_070124-3910_Thespesia_populnea.jpg/330px-Starr_070124-3910_Thespesia_populnea.jpg',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Amphoe_6606.svg/375px-Amphoe_6606.svg.png',
                'https://www.phichitguide.com/wp-content/uploads/2021/08/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%A2%E0%B8%99%E0%B9%89%E0%B8%B3-IMG_20210829_164534.jpg',
                ' 036 816 713',
                '056 681 115',
                'https://www.photalepc.go.th/history',
                'https://www.google.com/maps/place/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD+%E0%B9%82%E0%B8%9E%E0%B8%97%E0%B8%B0%E0%B9%80%E0%B8%A5+%E0%B8%9E%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A3/@16.059445,100.0756648,11z/data=!3m1!4b1!4m6!3m5!1s0x30e06d1fe8e557ed:0x304fb54b0087900!8m2!3d16.0543375!4d100.2151578!16s%2Fm%2F02phk55?entry=ttu'),
            tab02(
                'อำเภอสามง่าม',
                'https://lh5.googleusercontent.com/p/AF1QipP8GKHAyCv-ozJOmCCMIW6A5zBwnv4RorU66Thc=w743-h429-n-k-no',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Amphoe_6607.svg/375px-Amphoe_6607.svg.png',
                'https://lh5.googleusercontent.com/p/AF1QipNcafOhK6jSn6Xl1RLnXiw2BXNZnhhd6uo7QS0F=w743-h429-n-k-no',
                '056 691 242',
                '056 691 239',
                'https://www.samngam-sao.go.th/history',
                'https://www.google.com/maps?sca_esv=b1e24946e2e3e41f&sca_upv=1&output=search&q=%E0%B8%AA%E0%B8%B2%E0%B8%A1%E0%B8%87%E0%B9%88%E0%B8%B2%E0%B8%A1+%E0%B8%9E%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%A3&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
            tab02(
                'อำเภอทับคล้อ',
                'https://lh5.googleusercontent.com/p/AF1QipMS_CCEU3S1_xNxhL7TzS3PuJET4jY97UsFnS-R=w743-h429-n-k-no',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Amphoe_6608.svg/375px-Amphoe_6608.svg.png',
                'https://lh5.googleusercontent.com/p/AF1QipO5EaZPCE3FyTbgvoZguQVpgAEzU5C4uCJI0Bf1=w743-h429-n-k-no',
                '056 641 399',
                '056 641 131',
                'https://www.thabklo.go.th/',
                'https://www.google.com/maps?sca_esv=b1e24946e2e3e41f&sca_upv=1&output=search&q=%E0%B8%97%E0%B8%B1%E0%B8%9A%E0%B8%84%E0%B8%A5%E0%B9%89%E0%B8%AD&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
            tab02(
                'อำเภอสากเหล็ก',
                'https://ak-d.tripcdn.com/images/0ww5q12000arwte5sCD47_C_900_600_Q70.webp?proc=source%2ftrip&proc=source%2ftrip',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Amphoe_6609.svg/375px-Amphoe_6609.svg.png',
                'https://ak-d.tripcdn.com/images/0ww1212000arwsxhiA73C_C_900_600_Q70.webp?proc=source%2ftrip&proc=source%2ftrip',
                '083 449 2300',
                '056 698 042',
                'https://www.saklektsb.go.th/trv-otp-detail?page=4&id=580',
                'https://www.google.com/maps?sca_esv=b1e24946e2e3e41f&sca_upv=1&output=search&q=%E0%B8%AA%E0%B8%B2%E0%B8%81%E0%B9%80%E0%B8%AB%E0%B8%A5%E0%B9%87%E0%B8%81&source=lnms&entry=mc&ved=1t:200715&ictx=111'),
          ],
        ),
      ),
    );
  }

  Widget tab01(String introi, String imi, String imii, String imiii,
      String iPhone, String info, String webi, String GPSi) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            introi,
            style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Image.network(
                imi,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              SizedBox(width: 25),
              Image.network(
                imii,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: 25),
          Image.network(
            imiii,
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('   ' + info,
                style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    color: Color.fromARGB(255, 20, 20, 20))),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(iPhone);
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                'เบอร์ อบจ.' + iPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(webi),
                );
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                'เว็บไซต์ของ อบจ.',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(GPSi),
                );
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.gps_fixed,
              ),
              title: Text(
                'นำทางไปที่ อบจ.',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tab02(String introo, String imgo, String imgoo, String imgooo,
      String oPhone, String ooPhone, String webo, String GPSo) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            introo,
            style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Image.network(
                imgo,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              SizedBox(width: 25),
              Image.network(
                imgoo,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: 25),
          Image.network(
            imgooo,
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(ooPhone);
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                'เบอร์สถานีตำรวจ' + ooPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(oPhone);
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                'เบอร์โรงหยาบาล' + ooPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(webo),
                );
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                'ที่ว่าการอำเภอ.',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(GPSo),
                );
              },
              tileColor: Color.fromARGB(221,160,221),
              leading: Icon(
                Icons.gps_fixed,
              ),
              title: Text(
                'นำทางไปที่ร้าน',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

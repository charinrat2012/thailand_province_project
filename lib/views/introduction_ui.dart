// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/src/model/page_decoration.dart';
import 'package:thailand_province_project/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: IntroductionScreen(
        globalBackgroundColor: Colors.deepOrange[200],
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageUi(
              'บึงสีไฟ',
              'https://cms.dmpcdn.com/travel/2023/04/11/6cd690a0-d814-11ed-887e-7d1aa25d6e11_webp_original.jpg',
              'งสีไฟ แหล่งน้ำขนาดใหญ่ อันดับ 3 ของประเทศไทย และเป็นสถานที่พักผ่อนหย่อนใจ รวมถึงเป็น จุดชมพระอาทิตย์ตก ที่สวยและยิ่งใหญ่อลังการมากๆ ที่สำคัญเป็นสัญลักษณ์ของ จังหวัดพิจิตร ที่เราต้องนึกถึงเป็นอันดับแรกค่ะ ใครชอบบรรยากาศพระอาทิตย์ตกยามเย็น พร้อมวิวบึงสวยๆ ก็ต้องมาที่นี่ลยค่ะ '),
          PageUi(
              'อุทยานเมืองเก่าพิจิตร',
              'https://cms.dmpcdn.com/travel/2023/04/11/7d9adcc0-d814-11ed-9ce2-ab6e3fe974d8_webp_original.jpg',
              'สถานที่เที่ยวชื่อดังของ พิจิตร ต้องยกให้กับ อุทยานเมืองเก่าพิจิตร เลยค่ะ เพราะเป็นที่เที่ยวทางประวัติศาสตร์ สร้างในสมัยพระยาโคตรบอง ตั้งแต่ปี พ.ศ.1601 มาแล้ว เป็นเมืองโบราณ ที่มีทั้ง กำแพงเมือง คูเมือง เจดีย์เก่า ฯลฯ ซึ่งในปัจจุบันนั้น ก็ได้กลายมากเป็น สวนรุกขชาติ ไว้สำหรับพักผ่อนหย่อนใจของชาวพิจิตรนั่นเองค่ะ '),
          PageUi(
              'วัดโพธิ์ประทับช้าง',
              'https://cms.dmpcdn.com/travel/2023/04/11/983466f0-d814-11ed-887e-7d1aa25d6e11_webp_original.jpg',
              'วัดโพธิ์ประทับช้าง เป็นทั้งวัดและโบราณสถานที่มีอายุกว่า 300 ปีเลยทีเดียว และยังเป็นที่ประสูติของ สมเด็จพระสรรเพชญ์ที่ 8 (สมเด็จพระเจ้าเสือ) กษัตริย์แห่ง ราชวงศ์บ้านพลูหลวงอีกด้วย โดยภายในจะมีทั้ง พระอุโบสถ เจดีย์คู่ ปรางค์ราย มณฑป และสิ่งก่อสร้างอื่นๆ อีกมากมาย ส่วนนอกคูน้ำ ก็จะเป็นบริเวณของ เขตสังฆาวาส มี หมู่กุฏิสงฆ์ และ แนวเสาขนาดใหญ่ ซึ่งคาดการณ์ว่าตรงนี้ น่าจะเคยเป็น ศาลาเก้าห้อง มาก่อนค่ะ'),
          PageUi(
              'วัดท่าหลวง',
              'https://cms.dmpcdn.com/travel/2023/04/11/e38bf820-d814-11ed-8a96-53074f430a9a_webp_original.jpg',
              'วัดท่าหลวง เป็นวัดที่มีความสำคัญอย่างมากของ พิจิตร ค่ะ เพราะครั้งในสมัยรัชกาลที่ 3 นั้น ได้ถูกแต่งตั้งให้เป็น พระอารามหลวงชั้นตรีชนิดสามัญนั่นเองค่ะ และที่นี่ยังโดดเด่นไปด้วยความสวยงามของสถาปัตยกรรมต่างๆ อีกด้วย รวมถึงมีพระคู่บ้านคู่เมืองอย่าง หลวงพ่อเพชร พระพุทธรูปปางมารวิชัย สมัยเชียงแสนรุ่นแรก ที่ชาวพิจิตรเคารพศรัทธาเป็นอย่างมากประดิษฐานไว้อีกด้วย โดยเชื่อกันว่าสามารถขจัดปัดเป่าความทุกข์ร้อน และสิ่งไม่ดีออกไปได้ และจะนำพาแต่สิ่งดีๆ มาให้ผู้ที่กราบไหว้ค่ะ'),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          color: Colors.blueGrey,
          activeSize: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          activeColor: const Color.fromARGB(255,99,71),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        next: Icon(
          Icons.arrow_forward_sharp,
        ),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }

  PageViewModel PageUi(
    String IName,
    String IImage,
    String Index,
  ) {
    return PageViewModel(
      titleWidget: Text(
        IName,
        style: GoogleFonts.kanit(
          fontSize: MediaQuery.of(context).size.height * 0.035,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255,160,122),
        ),
      ),
      image: Image.network(
        IImage,
      ),
      bodyWidget: Text('  ' + Index,
          style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              color: Color.fromARGB(255, 20, 20, 20))),
    );
  }
}

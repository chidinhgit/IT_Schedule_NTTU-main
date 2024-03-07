import 'package:flutter/material.dart';
import 'package:notification_nttu/gioiThieuKhoa/SoDoTocChucKhoa.dart';
import 'package:notification_nttu/thongBaoKhoa/thongBaoNho.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: thongBaoKhoa(),
    );
  }
}



class thongBaoKhoa extends StatefulWidget {
  @override
  thongBaoKhoaState createState() => thongBaoKhoaState();
}

class thongBaoKhoaState extends State<thongBaoKhoa> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Add a listener to the PageController to update _currentPage
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông báo khoa'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
            children: [
          // Dòng hiển thị chữ tin tức
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 5, 0, 0),
                child: Text(
                  'Thông Báo',
                  style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                child: Icon(
                  Icons.circle_notifications,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
          // Khoảng trắng
          const Divider(
            thickness: 4,
            color: Colors.white,
          ),

// Tạo hình và thông báo chữ cho tin tức (thứ 1)
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
              child:InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => thongBaoNho()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/tBaoKhoa/tBao1.png',
                        width: 167,
                        height: 115,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                      child: VerticalDivider(
                        width: 27,
                        thickness: 3,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Text(
                            'Kế hoạch mở lớp học phần '
                                '\n HK2 - NH 2021 - 2022',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.normal,
                                color: Colors.blueAccent,
                                fontSize: 16
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Nhằm tạo điều kiện..',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),

// Tạo hình và thông báo chữ cho tin tức (thứ 2)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/tBaoKhoa/tBao2.png',
                      width: 167,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    width: 27,
                    thickness: 3,
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Thông báo thời gian '
                          ' xét ...',
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.normal,
                          color: Colors.blueAccent,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Xét tốt nghiệp cho sinh viên...',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.normal,

                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
// Tạo hình và thông báo chữ cho tin tức (thứ 3)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/tBaoKhoa/tBao3.png',
                      width: 167,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    width: 27,
                    thickness: 3,
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Thông báo nộp Khóa luận..',
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.normal,
                          color: Colors.blueAccent,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Thông báo nộp Khóa...',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.normal,

                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
// Tạo hình và thông báo chữ cho tin tức (thứ 4)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/tBaoKhoa/tBao4.png',
                      width: 167,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    width: 27,
                    thickness: 3,
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Thông báo phòng hội đồng..',
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.normal,
                          color: Colors.blueAccent,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                          'Thông báo phòng hội \n động buổi báo cáo..',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.normal,

                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ]),
      ),
    );
  }

  Widget buildImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

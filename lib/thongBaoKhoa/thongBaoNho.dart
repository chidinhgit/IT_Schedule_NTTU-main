import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kế hoạch Khóa Luận Tốt nghiệp HK2 - 2023',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: thongBaoNho(),
    );
  }
}
class thongBaoNho extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sơ đồ tổ chức khoa'),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Text(
                      'Kế hoạch Khóa Luận Tốt nghiệp HK2 - 2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                        ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Ngày đăng: 22/01/2024',
                      style:TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Xem chi tiết tại file đính kèm. http://cntt.ntt.edu.vn\n/-bieu-mau-khoa-luan-tot-nghiep-new-403/',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16

                    )
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        'Các mốc thời gian cần lưu ý:\nThời gian sinh viên tiến hành làm KLTN: 15/03/2024 – 15/05/2024;\nThời gian nộp báo cáo khóa luận tốt nghiệp: 20/05/2024;\nThời gian báo cáo kết quả thực tập trước hội đồng: 31/05/2024 – 03/06/2024.',
                          style:TextStyle(
                              fontSize: 15,

                          )
                      ),
                    ),
                  ),
                ],
              ),
             const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Sinh viên xem kỹ các mốc thời gian và thực hiện đúng \nngày quy định.\n',
                        style:TextStyle(
                            fontSize: 15,

                        )
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Mọi thắc mắc sinh viên liên hệ về Khoa để được hỗ trợ giải đáp.\n',
                     style:TextStyle(
                            fontSize: 15,

                        )
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
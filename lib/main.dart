//Phần giao diện cung cấp các widget và công cụ để xây dựng giao diện ứng dụng
import 'package:flutter/material.dart';
//Đây là hàm chính của ứng dụng flutter.Nó sẽ khởi chạy ứng dụng và hiển thị widget 
void main(){
  runApp(const MyApp());
}
//My App là một widget tùy chỉnh và được tạo ra bằng cách mở rộng từ StateLessWidget
//StatelessWidget là widget không có trạng thái tức là giao diện của nó sẽ không thay đổi trong suốt vòng đời của widget 
class MyApp extends StatelessWidget{
  const MyApp({super.key});
//Phương thức build() là phương thức chính để dựng giao diện của một widget .Nó trả về một cây các widget con tạo thành giao diện người dùng
@override 
Widget build(BuildContext context){
//MaterialApp là widget bao quanh toàn bộ ứng dụng và thiết lập một số cấu hình như theme, routing và ngôn ngữ.
  return MaterialApp(
//Home xác định widget đầu tiên được hiển thị khi ứng dụng khởi chạy, trong trường hợp này lafmootj scafffold
    home: Scaffold(
//Scaffold là một widget cấu trúc cơ bản của ứng dụng metarial . nó cung cấp các thành phần giao diện phổ biến như thanh ứng dụng appBar, vùng chứa nội dung chín (body).
//Trong mã này scaffold có một appBar và một body 
      appBar: AppBar(
//AppBar là một thành phần hiển thị thanh công cụ chứa tiêu đề và thanh điều hướng
//Ở đây appBar chứa tiêu đề là một widget Text
        title: const Text('Passing value example'),
      ),
//Thuộc tính body của scaffold là nơi đặt nội dung chính của ứng dụng . ở đây center được sử dụng để căn giữa nội dung con trong không gian trống
//Center chứa một widget tùy chỉnh là GreetingWidget
      body: const Center(
//GreetingWidget là một widget tùy chỉnh mở rộng từ statelessWidget 
//Widget này nhận một chuỗi giá trị message thông qua contructor
        child: GreetingWidget(message:"Xin chào bạn"),
      ),
    ),
  );
}

}
//Đây là contructor của GreetingWidget và từ khóa requierd đc sử dụng để đảm bảo rằng mesage được truyền vào khi tạo wiget này
class GreetingWidget extends StatelessWidget{
  final String message;
//super.key đảm bảo rằng widget có thể đc so sánh và lưu trữ ở trạng thái nếu cần 
  const GreetingWidget({super.key,required this.message});
  @override 
//Phương thức build() của greetingwidget trả về một widget text để hiển thị nội dung mesage  
  Widget build(BuildContext context){
    return Text(
      message,
//Định dạng văn bản với kích chữ là 24
      style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 2.0, // Khoảng cách giữa các chữ cái 
        wordSpacing: 4.0, // Khoảng cách giữa các từ 
        height: 1.5, //Độ cao dòng
        decoration: TextDecoration.underline, // trang trí văn bản 
        decorationColor: Colors.red, // màu sắc đường trang trí 
        decorationStyle: TextDecorationStyle.dashed, // kiểu trang trí
        decorationThickness: 2.0, // độ dày trang trí 
        fontFamily: 'Roboto',//Tên phông chữ
        shadows: [
          Shadow(
            offset: Offset(2.0, 2.0),//Vị trí bóng 
            blurRadius: 3.0,//Độ mờ của bóng
            color: Colors.transparent// Màu của bóng
          )
        ]
      ),
    );
  }

}
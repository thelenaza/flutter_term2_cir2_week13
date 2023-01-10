import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if(value == ""){
                    return "กรุณาป้อนชื่อผู้ใช้";
                  }
                  return null;
                },
                onSaved: (newValue){
                  print("บันทึกชื่อผู้ใช้");
                },
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if(value!.length < 3 ){
                    return "โปรดใส่รหัสผ่าน มากกว่า 3 ตัว";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  print("บันทึกรหัสผ่าน");
                },
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: () {
                if(_formkey.currentState!.validate() == true){
                  _formkey.currentState!.save();
                  print("บันทึกข้อมูลเรียบร้อย");
                }
              } , child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}

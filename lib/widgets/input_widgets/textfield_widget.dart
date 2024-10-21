import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TextfieldWidget> createState() => _TextfieldWidget();
}

class _TextfieldWidget extends State<TextfieldWidget> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Textfield'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter email',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    //suffix & prefix
                    suffixText: "Username Exists"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordText,
                obscureText: true,
                obscuringCharacter: '@',
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.password))),
              ),
              //Login Button
              ElevatedButton(
                  onPressed: () {
                    var email = emailText.text.toString();
                    var password = passwordText.text;
                    print('Email : ${email}');
                    print('Password : ${password}');
                  },
                  child: Text('Login'))
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{
  static String route=  'login ';

  @override
  _LoginViewState createState()=> _LoginViewState();
}

class _LoginViewState extends State<LoginView>{
  var emailController= TextEditingController= TextEditingController(text: 'test@test.com');
  var passwordController(text: '123456 ');

  @override
  Widget build(BuildContext context){
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0x30000000),
          backgroundBlendMode: BlendMode.darken,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color(0x00000000),
                  backgroundImage: AssetImage(),
                  radius: 50.0,
                ),
              ),
              SizedBox(height: 50.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xBBFFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(hintText:'password'),
                          controller: passwordController,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton.icon(
                          Icons.verifier_user,
                          color:textTheme.button.color,
                        ),
                        label: label)
                      ],
                    ),
                  ),
                  ),
                ),
              )
            ]


            ],
          ),
        ),
      ),
    )
  }
}
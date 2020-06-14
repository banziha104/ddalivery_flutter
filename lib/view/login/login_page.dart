import 'dart:developer';

import 'package:ddaliveryflutter/api/api.dart';
import 'package:ddaliveryflutter/view/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: "이메일을 입력해주세요 ^~^b"),
                      onChanged: (text) {
                        log('아이디 얍얍 : $text');
                        loginBloc.add(EditIdEvent.withText(text));
                      },
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: "패스워드를 입력해주세요"),
                      onChanged: (text) {
                        log('패스워드 얍얍 : $text');
                        loginBloc.add(EditPwEvent.withText(text));
                      },
                    ),
                    OutlineButton(
                      onPressed: () {
                        ProductApi.getInstance()
                            .getAllProduct()
                            .then((value) => value.data.forEach((element) {
                                  log(element.productName);
                                }));
                        Navigator.pushNamed(context, '/main');
                      },
                      child: Text("호우우우우"),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

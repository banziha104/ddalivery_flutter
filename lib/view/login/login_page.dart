
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
            child: RaisedButton(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("꾸엉")));
                },
                child: Text("이야아아압"),
            ),
          );
        },
      )
    );
  }
}
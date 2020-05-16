
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LoginEvent extends Equatable{
  @override
  List<Object> get props => [];

}

class EditEvent extends LoginEvent{
  String text;

  EditEvent({this.text});
}

class EditIdEvent extends EditEvent{

}

class EditPwEvent extends EditEvent{

}
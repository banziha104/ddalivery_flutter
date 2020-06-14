
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LoginEvent extends Equatable{
  @override
  List<Object> get props => [];

}

class EditEvent extends LoginEvent{
  String text;

  EditEvent.withText(text){this.text = text;}
}

class EditIdEvent extends EditEvent{
  EditIdEvent.withText(text) : super.withText(text);
}

class EditPwEvent extends EditEvent{
  EditPwEvent.withText(text) : super.withText(text);
}
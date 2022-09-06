// ignore_for_file: empty_constructor_bodies

import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginState {}

class LoginErrorState extends LoginState {
  final String errormessage;
  LoginErrorState({required this.errormessage});
}

class LoginSucessState extends LoginState {}

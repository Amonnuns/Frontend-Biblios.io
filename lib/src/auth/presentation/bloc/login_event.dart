import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginPageBuild extends LoginEvent {}

class LoginFormChange extends LoginEvent {}

class LoginSubmit extends LoginEvent {}

class LoginEmptySubmit extends LoginEvent {}
